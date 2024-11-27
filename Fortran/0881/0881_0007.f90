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

TYPE(deriv), POINTER :: arr_ptr_deriv(:)
CLASS(base), ALLOCATABLE :: var_base;
TYPE(deriv), TARGET :: tar_deriv(3)

arr_ptr_deriv => tar_deriv
ALLOCATE(deriv::var_base)
var_base%int1 = 1
x = EXTENDS_TYPE_OF(arr_ptr_deriv, var_base)
if(x .eqv. .true.)Then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
