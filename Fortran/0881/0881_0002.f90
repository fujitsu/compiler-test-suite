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

TYPE(deriv1) :: arr_deriv1(3)
TYPE(base), TARGET :: tar_base(3)
x = EXTENDS_TYPE_OF(arr_deriv1(2), fun(tar_base))
if(x .eqv. .true.) then
   print*,'pass'
else
   print*,'fail'
endif

contains 
FUNCTION fun(dum1)
  class(base),POINTER::fun(:)
  TYPE(base),TARGET::dum1(3)
  fun=>dum1
END FUNCTION

END PROGRAM