'use client'

import { ReactNode } from 'react'
import { AuthProvider } from './AuthContext'
import { ProductProvider } from './ProductContext'
import { RoleProvider } from './role-context'
import { UserProvider } from './user-context'
import { UsersProvider } from './users-context' // ← add this

export const AppContextProvider = ({ children }: { children: ReactNode }) => {
  return (
    <AuthProvider>
      <UserProvider>
        <UsersProvider>
          <RoleProvider>
            <ProductProvider>
              {children}
            </ProductProvider>
          </RoleProvider>
        </UsersProvider>
      </UserProvider>
    </AuthProvider>
  )
}
