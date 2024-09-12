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

TYPE nano 
 CLASS(base),POINTER:: ptr_base1
END TYPE

TYPE(nano):: obj_nano
TYPE(deriv),POINTER :: ptr_deriv

ALLOCATE(ptr_deriv) 
ALLOCATE(obj_nano%ptr_base1)
ptr_deriv%int1=2
obj_nano%ptr_base1=>ptr_deriv
 
print*,obj_nano%ptr_base1%int1
END PROGRAM
