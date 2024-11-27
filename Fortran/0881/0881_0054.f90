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
TYPE(deriv), TARGET :: tar_deriv
ptr_base => tar_deriv

call sub(ptr_base)
contains 
SUBROUTINE sub(dum1)

    TYPE ty1
       integer :: num1
    END TYPE ty1
    TYPE, EXTENDS(ty1) :: ty2
       integer :: num2
    END TYPE ty2

    CLASS(base) :: dum1
    CLASS(ty1), POINTER :: ptr_ty1
    TYPE(ty2), TARGET :: tar_ty2
    LOGICAL x
    ptr_ty1 => tar_ty2
    x = EXTENDS_TYPE_OF(ptr_ty1, dum1)
    if(x .eqv. .false.) then
      print*,'pass'
    else
      print*,'fail'
    endif
END SUBROUTINE

END PROGRAM
