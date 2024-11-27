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
 
LOGICAL::y
TYPE(deriv1),TARGET::tar_base(3)
TYPE(deriv1):: obj_deriv(4)

obj_deriv(2)%real3=4.3
tar_base%real1=4.5
tar_base = deriv1(1,1.0,base(2,2.0),3,3.0,deriv(4,4.0,base(5,5.0),6,6.0),7,7.0)
y=SAME_TYPE_AS(fun(tar_base),obj_deriv(2))
if(y .eqv. .true.) then
  print*,'pass'
else
  print*,'fail' 
endif

contains 
FUNCTION fun(dum1)
  CLASS(base),ALLOCATABLE::fun(:)
  TYPE(deriv1),TARGET::dum1(3)
  ALLOCATE(fun,SOURCE=dum1)
END FUNCTION

END PROGRAM
