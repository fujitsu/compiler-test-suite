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

Program main

       USE typedef

       INTERFACE OPERATOR(+)
       function pls(a,b)
       import deriv
       import deriv1

       type(deriv), pointer, intent(in) :: a(:)
       type(deriv1), pointer, intent(in) :: b(:)
       type(deriv), pointer :: pls(:)

       END function
       END INTERFACE operator(+)

       type(deriv),POINTER::pptr(:)
       type(deriv1),POINTER::pptr1(:)
       class(deriv1), POINTER :: obj

       allocate(pptr(3), pptr1(3))
       allocate(obj)
       pptr%int2 = 4
       pptr1%int3 = 2
       obj%int3=5
       x=EXTENDS_TYPE_OF(obj, pptr+pptr1)
       if(x .eqv. .true.) then
         print*,'pass'
       else
         print*,'fail'
       endif 
END

function pls(a,b)

    USE typedef

    type(deriv), pointer, intent(in) :: a(:)
    type(deriv1), pointer, intent(in) :: b(:)
    type(deriv), pointer :: pls(:)

    allocate(pls(3))
    pls%int1 = a%int2 + b%int3
END function
