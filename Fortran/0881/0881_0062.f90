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

CLASS(base),POINTER:: ptr_base
TYPE(deriv1),POINTER:: ptr_deriv
TYPE(deriv1),TARGET::tar_deriv

tar_deriv%int1=3
ptr_deriv=>tar_deriv
ALLOCATE(base::ptr_base)
x=SAME_TYPE_AS(ptr_base,ptr_deriv)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
