import { Suspense } from 'react';
import AdminHome from '@/components/AdminHome';

export default function AdminPage() {
  return (
    <Suspense fallback={<div style={{ padding: '2rem' }}>Loading…</div>}>
      <AdminHome />         
    </Suspense>
  );
}
