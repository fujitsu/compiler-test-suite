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

ALLOCATE(base::ptr_base)
call sub(ptr_base)
contains 
SUBROUTINE sub(dum1)
  LOGICAL::x
  CLASS(base),POINTER::dum1
  TYPE(deriv1):: obj_deriv(4)
  obj_deriv%int1=3
  x=SAME_TYPE_AS(dum1,obj_deriv(3))
  if(x .eqv. .false.) then
    print*,'pass'
  else
    print*,'fail'
  endif
END SUBROUTINE

END PROGRAM
