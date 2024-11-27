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

TYPE(deriv1), POINTER :: ptr_deriv1

call sub(ptr_deriv1)
contains 
SUBROUTINE sub(dum1)
    TYPE(deriv1), POINTER :: dum1
    TYPE(base), TARGET :: tar_base(3)
    LOGICAL x
    x = EXTENDS_TYPE_OF(dum1, fun(tar_base))
    if(x .eqv. .true.) then
      print*,'pass'
    else
      print*,'fail'
    endif
END SUBROUTINE


FUNCTION fun(dum2)
  class(base),POINTER::fun
  TYPE(base),TARGET::dum2(3)
  fun=>dum2(1)
END FUNCTION

END PROGRAM
