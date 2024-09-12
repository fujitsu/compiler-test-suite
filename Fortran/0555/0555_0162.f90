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
 
CLASS(base),POINTER:: ptr_base1
TYPE(deriv),POINTER :: ptr_deriv

allocate(ptr_deriv)
ptr_deriv%int1=2
ptr_base1=>ptr_deriv

print*,ptr_base1%int1
END PROGRAM
