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
 
CLASS(*),ALLOCATABLE::obj1
TYPE(deriv1)::obj2
 
obj2%real1=4.6
ALLOCATE(INTEGER::obj1)
x=SAME_TYPE_AS(obj1,obj2)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
