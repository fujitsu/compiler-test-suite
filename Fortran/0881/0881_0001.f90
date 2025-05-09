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
CLASS(BASE), POINTER :: arr_ptr_base(:)
TYPE(BASE), TARGET :: tar_base(3)

arr_ptr_base => tar_base

x = EXTENDS_TYPE_OF(ptr_deriv1, arr_ptr_base)
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
