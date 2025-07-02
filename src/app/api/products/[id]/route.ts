import { NextRequest, NextResponse } from 'next/server'
import prisma from '@/lib/prisma'

type Params = { id: string }

/* ───────────────────────── PUT /api/products/[id] ───────────────────────── */

export async function PUT(
  req: NextRequest,
  { params }: { params: Promise<Params> }
) {
  const { id } = await params
  const prodId = Number(id)
  if (Number.isNaN(prodId)) {
    return NextResponse.json({ error: 'Invalid product ID' }, { status: 400 })
  }

  const body = await req.json()
  const { name, description, price, category } = body

  try {
    const product = await prisma.product.update({
      where: { id: prodId }, // ✅ FIXED: use 'id'
      data: {
        name,
        description,
        price: Number(price),
        category,
      },
    })

    return NextResponse.json(product)
  } catch (err) {
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
  const { id } = await params
  const prodId = Number(id)
  if (Number.isNaN(prodId)) {
    return NextResponse.json({ error: 'Invalid product ID' }, { status: 400 })
  }

  try {
    await prisma.product.delete({ where: { id: prodId } }) // ✅ FIXED: use 'id'
    return NextResponse.json({ message: 'Product deleted' })
  } catch (err) {
    console.error('DELETE /products/[id] error:', err)
    return NextResponse.json(
      { error: 'Failed to delete product' },
      { status: 500 }
    )
  }
}
