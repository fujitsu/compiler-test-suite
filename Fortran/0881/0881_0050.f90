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

program main

USE typedef

type con
  class(deriv1),pointer:: act 
  class(deriv1),pointer:: actual 
end type con

type(con):: obj
class(deriv), POINTER::obj_drv
type(deriv),TARGET::tar_drv1
obj_drv => tar_drv1
allocate(obj%actual)
allocate(obj%act)
obj%actual%int3=18
obj%act%int3=20
obj_drv%int2=30
x= EXTENDS_TYPE_OF((/obj%act,obj%actual/),obj_drv)
if(x .eqv. .true.) then
  print*,'pass'
else
  print*,'fail'
endif
end program 
