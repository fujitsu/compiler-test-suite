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
       function plsBase(a,b)
       import base

       type(base), pointer, intent(in) :: a(:)
       type(base), pointer, intent(in) :: b(:)
       class(base), pointer :: plsBase(:)

       END function

       function pls(a,b)
       import deriv

       type(deriv), pointer, intent(in) :: a(:)
       type(deriv), pointer, intent(in) :: b(:)
       type(deriv), pointer :: pls(:)

       END function
       END INTERFACE operator(+)
 
       type(deriv),POINTER::pptr(:)
       type(deriv),POINTER::pptr1(:)
       type(base),POINTER::pptr2(:)
       type(base),POINTER::pptr3(:)

       allocate(pptr(3), pptr1(3))
       allocate(pptr2(3), pptr3(3))
       pptr%int1 = 3
       pptr%int2 = 4
       pptr1%int1 = 2
       pptr1%int2 = 2
       pptr2%int1 = 3
       pptr3%int1 = 3
       x=EXTENDS_TYPE_OF(pptr+pptr1, pptr2+pptr3)
       if(x .eqv. .true.) then
         print*,'pass'
       else
         print*,'fail'
       endif 
END
 
function plsBase(a,b)

    USE typedef

    type(base), pointer, intent(in) :: a(:)
    type(base), pointer, intent(in) :: b(:)
    class(base), pointer :: plsBase(:)

    allocate(plsBase(3))
    plsBase%int1 = a%int1 + b%int1
END function

function pls(a,b)

    USE typedef

    type(deriv), pointer, intent(in) :: a(:)
    type(deriv), pointer, intent(in) :: b(:)
    type(deriv), pointer :: pls(:)

    allocate(pls(3))
    pls%int2 = a%int2 + b%int2
END function

