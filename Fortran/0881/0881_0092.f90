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
  CLASS(*),POINTER:: ptr_base(:)
END TYPE

CLASS(deriv),POINTER:: ptr_deriv
TYPE(deriv1),TARGET::tar_deriv
TYPE(con)::obj

tar_deriv%real1=3.4
ptr_deriv=>tar_deriv
ALLOCATE(base::obj%ptr_base(5))
x=SAME_TYPE_AS(obj%ptr_base,ptr_deriv)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail' 
endif

END PROGRAM
