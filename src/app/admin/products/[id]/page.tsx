'use client'

import { useParams } from 'next/navigation'
import ProductModal from '@/components/ProductModal'

export default function ProductModalPage() {
  // tell useParams what the route params look like
  const { id } = useParams<{ id: string }>()

  return id ? <ProductModal id={id} /> : null
}
