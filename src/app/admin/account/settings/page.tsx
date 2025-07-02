import { Suspense } from 'react'
import SettingsClient from '@/components/SettingsContent'

export default function SettingsPage() {
  return (
    <Suspense fallback={<div style={{ padding: '2rem' }}>Loading…</div>}>
      <SettingsClient />
    </Suspense>
  )
}