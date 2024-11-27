PROGRAM MAIN
 
IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE

TYPE ,EXTENDS(deriv)::deriv1
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real3
  CLASS(deriv),POINTER::ptr_com
END TYPE

TYPE(deriv1),POINTER::ptr

ALLOCATE(ptr)
ALLOCATE(ptr%ptr_com)

if(ASSOCIATED(ptr%ptr_com)) then
  print*,'ASSOCIATED'
else
  print*,'DISASSOCIATED'
endif

NULLIFY(ptr%ptr_com)

if(ASSOCIATED(ptr%ptr_com)) then
  print*,'ASSOCIATED'
else
  print*,'DISASSOCIATED'
endif

NULLIFY(ptr)

END

