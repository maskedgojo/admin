// app/api/permissions/route.ts
import { NextResponse } from 'next/server'
import prisma from '@/lib/prisma'

/* ─────────── helper type that includes *id* and *permissions* ─────────── */
type RolePerm = {
  id: number            // ‑- or string, match your Prisma schema
  permissions: Record<string, boolean> | null
}

/* ───────────────────────────── GET ───────────────────────────── */

export async function GET() {
  const roles = await prisma.role.findMany({
    select: { id: true, permissions: true },   // ← include id as well
  }) as RolePerm[]

  const allPermissions = new Set<string>()

  roles.forEach((role) => {
    if (role.permissions) {
      for (const key of Object.keys(role.permissions)) {
        allPermissions.add(key)  // ✅ includes all keys, even if false
      }
    }
  })

  return NextResponse.json([...allPermissions])
}

/* ──────────────────────────── DELETE ────────────────────────── */

export async function DELETE(req: Request) {
  const { searchParams } = new URL(req.url)
  const name = searchParams.get('name')

  if (!name) {
    return NextResponse.json(
      { error: 'Permission name is required' },
      { status: 400 }
    )
  }

  const roles = await prisma.role.findMany({
    select: { id: true, permissions: true },
  }) as RolePerm[]

  await Promise.all(
    roles.map((role) => {
      const updated = { ...(role.permissions || {}) }
      delete updated[name]

      return prisma.role.update({
        where: { id: role.id },          // ✅ no “any” cast needed
        data: { permissions: updated },
      })
    })
  )

  return NextResponse.json({
    message: `Permission "${name}" deleted from all roles`,
  })
}

export async function POST(req: Request) {
  const { name } = await req.json()

  if (!name) {
    return NextResponse.json({ error: 'Permission name is required' }, { status: 400 })
  }

  const roles = await prisma.role.findMany({
    select: { id: true, permissions: true },
  }) as RolePerm[]

  // Add the permission to all roles (default: false)
  await Promise.all(
    roles.map((role) => {
      const updated = { ...(role.permissions || {}) }

      // Don't overwrite if it already exists
      if (!(name in updated)) {
        updated[name] = false
      }

      return prisma.role.update({
        where: { id: role.id },
        data: { permissions: updated },
      })
    })
  )

  return NextResponse.json({
    message: `Permission "${name}" added to all roles (default: false)`,
  }, { status: 201 })
}