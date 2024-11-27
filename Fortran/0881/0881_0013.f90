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

TYPE arg1
    class(base),POINTER :: ptr_base(:)
end TYPE

TYPE arg2
    type(deriv1) :: var_deriv1
END TYPE

TYPE(arg1) :: obj1
TYPE(arg2) :: obj2

ALLOCATE(deriv::obj1%ptr_base(3))

obj1%ptr_base%int1 = 2
obj2%var_deriv1%int3 = 3

x = EXTENDS_TYPE_OF(obj1%ptr_base, obj2%var_deriv1)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM
