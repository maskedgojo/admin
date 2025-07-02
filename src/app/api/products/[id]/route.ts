import { NextRequest, NextResponse } from 'next/server'
import prisma from '@/lib/prisma'

type Params = { id: string }

/* ───────────────────────── PUT /api/products/[id] ───────────────────────── */

export async function PUT(
  req: NextRequest,
  { params }: { params: Promise<Params> }
) {
  const { id } = await params              //  ← await it
  const prodId = Number(id)
  if (Number.isNaN(prodId)) {
    return NextResponse.json({ error: 'Invalid product ID' }, { status: 400 })
  }

  const body = await req.json()
  const { name, description, price, category } = body

  try {
    const product = await prisma.product.update({
      where: { prodId },
      data: {
        name,
        description,
        price: Number(price),      // make sure price is a number
        category,
      },
    })

    return NextResponse.json(product)            // 200 by default
  } catch (err) {
    // not-found and db errors both surface here
    console.error('PUT /products/[id] error:', err)
    return NextResponse.json(
      { error: 'Failed to update product' },
      { status: 500 }
    )
  }
}

/* ──────────────────────── DELETE /api/products/[id] ─────────────────────── */

export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<Params> }
) {
  const { id } = await params              //  ← await it
  const prodId = Number(id)
  if (Number.isNaN(prodId)) {
    return NextResponse.json({ error: 'Invalid product ID' }, { status: 400 })
  }

  try {
    await prisma.product.delete({ where: { prodId } })
    return NextResponse.json({ message: 'Product deleted' }) // 200
  } catch (err) {
    console.error('DELETE /products/[id] error:', err)
    return NextResponse.json(
      { error: 'Failed to delete product' },
      { status: 500 }
    )
  }
}
