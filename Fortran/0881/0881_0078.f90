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
 
TYPE(deriv1),TARGET::tar_base(3)
TYPE(deriv1):: obj_deriv(4)

obj_deriv(2)%real3=4.3
tar_base%real1=4.5
x=SAME_TYPE_AS(fun(tar_base),obj_deriv(2))
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail'
endif

contains 
FUNCTION fun(dum1)
  CLASS(base),POINTER::fun(:)
  TYPE(deriv1),TARGET::dum1(3)
  fun=>dum1
END FUNCTION

END PROGRAM
