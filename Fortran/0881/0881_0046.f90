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

       type(deriv), pointer, intent(in) :: a(:)
       type(deriv), pointer, intent(in) :: b(:)
       class(deriv), pointer :: pls(:)

       END function
       END INTERFACE operator(+)
 
       type(deriv),POINTER::pptr(:)
       type(deriv),POINTER::pptr1(:)
       type(deriv1)::obj

       allocate(pptr(3), pptr1(3))
       pptr%int2 = 4
       pptr1%int2 = 2
       obj%int3=5
       x=EXTENDS_TYPE_OF((pptr+pptr1),obj)
       if(x .eqv. .false.) then
         print*,'pass'
       else
         print*,'fail'
       endif 
END
 
function pls(a,b)
    
    USE typedef

    type(deriv), pointer, intent(in) :: a(:)
    type(deriv), pointer, intent(in) :: b(:)
    class(deriv), pointer :: pls(:)

    allocate(pls(3))
    pls%int1 = a%int2 + b%int2
END function

