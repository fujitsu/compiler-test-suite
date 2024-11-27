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
  INTEGER::i
  INTEGER::j
  type(deriv1)::comp
END TYPE

CLASS(base),POINTER::obj_deriv1
CLASS(deriv1),ALLOCATABLE:: obj_deriv(:)
TYPE(con)::obj

obj%i=2
obj%comp=deriv1(1,1.0,base(2,2.0),3,3.0,deriv(4,4.0,base(5,5.0),6,6.0),7,7.0)
ALLOCATE(obj_deriv1,SOURCE=obj%comp)
ALLOCATE(obj_deriv(4))
obj_deriv(2)%real3=4.3
obj_deriv1%real1=4.5
x=SAME_TYPE_AS(fun(obj_deriv1),obj_deriv(2))
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail' 
endif

contains 
FUNCTION fun(dum1)
  TYPE(base),POINTER::fun
  TYPE(base),TARGET::dum1
  fun=>dum1
END FUNCTION

END PROGRAM
