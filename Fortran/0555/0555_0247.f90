PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  CLASS(base),POINTER::ptr_base
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 
 
CLASS(*),POINTER:: ptr_base1 => null()
TYPE(deriv),POINTER :: ptr_deriv
allocate(ptr_deriv)

if(ASSOCIATED(ptr_base1)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

ptr_base1=>ptr_deriv

if(ASSOCIATED(ptr_base1)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED'
endif

ptr_deriv%int1=2
END PROGRAM
