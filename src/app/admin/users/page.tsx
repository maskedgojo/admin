import { Suspense } from 'react'
import UsersClient from '@/components/UserContent'

export default function UsersPage() {
  return (
    <Suspense fallback={<div style={{ padding: '2rem' }}>Loading…</div>}>
      <UsersClient />
    </Suspense>
  )
}