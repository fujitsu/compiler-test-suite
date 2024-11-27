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

CLASS(base), POINTER :: ptr_base

call sub(ptr_base)
contains 
SUBROUTINE sub(dum1)
    CLASS(base), POINTER :: dum1
    TYPE(deriv), TARGET :: tar_deriv
    TYPE(deriv1), TARGET :: tar_deriv1
    LOGICAL x
    dum1 => tar_deriv
    x = EXTENDS_TYPE_OF(dum1, fun(tar_deriv1))
    if(x .eqv. .false.) then
      print*,'pass'
    else
      print*,'fail'
    endif
END SUBROUTINE


FUNCTION fun(dum2)
  type(deriv1) :: fun
  TYPE(deriv1),TARGET::dum2
  dum2 = deriv1(1,1.0,base(2,2.0),3,3.0,deriv(4,4.0,base(5,5.0),6,6.0),7,7.0)
  fun = dum2
END FUNCTION

END PROGRAM
