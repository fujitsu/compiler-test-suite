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

CLASS(*), ALLOCATABLE :: var
TYPE(base), TARGET :: tar_base
ALLOCATE(deriv1::var)
x = EXTENDS_TYPE_OF(var, fun(tar_base))
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail'
endif

contains
FUNCTION fun(dum1)
  class(*),POINTER::fun
  TYPE(base),TARGET::dum1
  fun=>dum1
END FUNCTION

END PROGRAM