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
    CLASS(*), POINTER :: arr_ptr1(:)
END type

type arg2
    CLASS(*), POINTER :: arr_ptr2(:)
END type

    TYPE(arg1) :: obj1
    TYPE(arg2) :: obj2
    TYPE(deriv1), TARGET :: tar_deriv(3)
    TYPE(base), TARGET :: tar_base(3)

    obj1%arr_ptr1 => tar_deriv
    obj2%arr_ptr2 => tar_base
    x = EXTENDS_TYPE_OF(obj1%arr_ptr1(1), obj2%arr_ptr2)
    if(x .eqv. .true.) then
      print*,'pass'
    else
      print*,'fail'
    endif
END PROGRAM
