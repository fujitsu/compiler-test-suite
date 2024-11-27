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
    class(*),POINTER :: ptr
end TYPE

TYPE arg2
    type(deriv1), POINTER :: ptr_deriv1
END TYPE

TYPE(arg1) :: obj1
TYPE(arg2) :: obj2
TYPE(deriv), TARGET :: tar_deriv

ALLOCATE(deriv1::obj2%ptr_deriv1)
tar_deriv%int2 = 2
obj1%ptr => tar_deriv
obj2%ptr_deriv1%int3 = 3

x = EXTENDS_TYPE_OF(obj1%ptr, obj2%ptr_deriv1)
if(x .eqv. .false.) then
  print*,'pass'
else
  print*,'fail'
endif

END PROGRAM


