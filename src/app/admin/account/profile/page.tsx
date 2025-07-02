import { Suspense } from 'react'
import ProfileClient from '@/components/ProfileContent'

export default function ProfilePage() {
  return (
    <Suspense fallback={<div className="p-8 text-center text-gray-500">Loading profile...</div>}>
      <ProfileClient />
    </Suspense>
  )
}
