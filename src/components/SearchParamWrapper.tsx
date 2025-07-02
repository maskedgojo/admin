'use client'

import { useSearchParams } from 'next/navigation'
import { useEffect } from 'react'
import { toast } from 'react-toastify'

export default function SearchParamWrapper() {
  const searchParams = useSearchParams()

  useEffect(() => {
    const status = searchParams.get('status')
    if (status === 'login') {
      toast.success('Welcome! You are now logged in.')

      const url = new URL(window.location.href)
      url.searchParams.delete('status')
      window.history.replaceState({}, '', url.toString())
    }

    if (searchParams.get('error') === '1') {
      toast.error('Something went wrong. You’ve been redirected.')
    }
  }, [searchParams])

  return null
}
