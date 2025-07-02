import { NextRequest, NextResponse } from 'next/server'
import prisma from '@/lib/prisma'
import bcrypt from 'bcryptjs'

/* no need for RouteContext or a helper – just use the correct shape */
type Params = { id: string }

/* ───────────── DELETE ───────────── */
export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<Params> }  //  ← Promise
) {
  const { id } = await params              //  ← await it
  const userId = Number(id)

  if (Number.isNaN(userId)) {
    return NextResponse.json({ error: 'Invalid user ID' }, { status: 400 })
  }

  const user = await prisma.user.findUnique({ where: { id: userId } })
  if (!user) {
    return NextResponse.json({ error: 'User not found' }, { status: 404 })
  }

  await prisma.userRole.deleteMany({ where: { userId } })
  await prisma.user.delete({ where: { id: userId } })

  return NextResponse.json({ message: 'User deleted' }, { status: 200 })
}

/* ───────────── PUT ───────────── */
export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<Params> }   //  ← Promise
) {
  const { id } = await params               //  ← await it
  const userId = Number(id)

  if (Number.isNaN(userId)) {
    return NextResponse.json({ error: 'Invalid user ID' }, { status: 400 })
  }

  const body      = await request.json()
  const { name, email, password, dob, address, roles } = body
  const existing  = await prisma.user.findUnique({ where: { id: userId } })
  if (!existing) {
    return NextResponse.json({ error: 'User not found' }, { status: 404 })
  }

  const hashedPwd =
    password?.trim() ? await bcrypt.hash(password, 10) : undefined

  await prisma.user.update({
    where: { id: userId },
    data: {
      name,
      email,
      password: hashedPwd ?? existing.password,
      dob: dob ? new Date(dob) : existing.dob,
      address,
    },
  })

  if (Array.isArray(roles)) {
    await prisma.userRole.deleteMany({ where: { userId } })
    await prisma.userRole.createMany({
      data: roles.map((roleId: number) => ({ userId, roleId })),
      skipDuplicates: true,
    })
  }

  const updated = await prisma.user.findUnique({
    where: { id: userId },
    select: {
      id: true,
      name: true,
      email: true,
      dob: true,
      address: true,
      createdAt: true,
      userRoles: { select: { role: { select: { id: true, name: true } } } },
    },
  })

  return NextResponse.json(updated, { status: 200 })
}
