MODULE typedef

IMPLICIT NONE

LOGICAL :: X

TYPE base
    INTEGER(KIND=8) :: int1
    REAL(KIND=8) :: real1
END TYPE

TYPE, EXTENDS(base) :: deriv
    TYPE(base) :: obj
    INTEGER(KIND=8) :: int2
    REAL(KIND=8) :: real2
END TYPE

TYPE, EXTENDS(deriv) :: deriv1
    TYPE(deriv) :: obj1
    INTEGER(KIND=8) :: int3
    REAL(KIND=8) :: real3
END TYPE

END MODULE

PROGRAM MAIN

USE typedef

IMPLICIT NONE

type arg1
    CLASS(deriv1), ALLOCATABLE :: ptr_deriv1
END type

CLASS(base), POINTER :: var_base

ALLOCATE(base::var_base)
var_base%int1 = 1

call sub(var_base)
contains
SUBROUTINE sub(dum)
    CLASS(base), TARGET :: dum
    TYPE(arg1) :: obj1
    LOGICAL x
    ALLOCATE(deriv1 ::obj1% ptr_deriv1)
    obj1%ptr_deriv1%int2 = 2
    x = EXTENDS_TYPE_OF(obj1%ptr_deriv1, dum)
    if(x .eqv. .true.) then
      print*,'pass'
    else
      print*,'fail'
    endif
END SUBROUTINE

END PROGRAM
