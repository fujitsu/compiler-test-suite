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
    CLASS(*), POINTER :: ptr
END type

CLASS(*), ALLOCATABLE :: var

ALLOCATE(base::var)

call sub(var)
contains
SUBROUTINE sub(dum)

    CLASS(*), TARGET :: dum
    TYPE(arg1) :: obj1
    TYPE(deriv1), TARGET :: tar_deriv
    LOGICAL x
    obj1%ptr => tar_deriv
    x = EXTENDS_TYPE_OF(obj1%ptr, dum)
    if(x .eqv. .true.) then
      print*,'pass'
    else
      print*,'fail'
    endif
END SUBROUTINE

END PROGRAM
