MODULE MODULE1

IMPLICIT NONE

LOGICAL::x

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  TYPE(base)::obj
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE

TYPE ,EXTENDS(deriv)::deriv1
  TYPE(deriv)::obj1
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real3
END TYPE

END MODULE

PROGRAM MAIN

use MODULE1

IMPLICIT NONE
 
TYPE con
  CLASS(deriv),POINTER:: ptr_deriv(:)
END TYPE

CLASS(*),POINTER:: ptr_base
TYPE(con)::obj

ALLOCATE(obj%ptr_deriv(2))
obj%ptr_deriv(1)%int1=3
ptr_base=>obj%ptr_deriv(1)
x=SAME_TYPE_AS(ptr_base,obj%ptr_deriv(1))
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail' 
endif

END PROGRAM
