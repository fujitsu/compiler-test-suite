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
    CLASS(deriv1), POINTER :: ptr_deriv1(:)
END type

type arg2
    CLASS(base), POINTER :: ptr_base(:)
END type

    TYPE(arg1) :: obj1
    TYPE(arg2) :: obj2
    TYPE(deriv1), TARGET :: tar_deriv(3)
    TYPE(base), TARGET :: tar_base(3)

    obj1%ptr_deriv1 => tar_deriv
    obj1%ptr_deriv1%int2 = 2
    obj2%ptr_base => tar_base
    obj2%ptr_base(2)%int1 = 1
    x = EXTENDS_TYPE_OF(obj1%ptr_deriv1, obj2%ptr_base(2))
    if(x .eqv. .true.) then
      print*,'pass'
    else
      print*,'fail'
    endif

END PROGRAM
