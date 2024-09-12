MODULE m1
IMPLICIT NONE

TYPE ty
  INTEGER :: num = 14
END TYPE

type,extends(ty) :: ty2
 integer :: num2 = 2
end type
end module

module mod1
use m1
INTERFACE 
  FUNCTION efun(dd1,dd2)
  IMPORT ty
    CLASS(ty),intent(in) :: dd1,dd2
    CLASS(ty),ALLOCATABLE :: efun
  END FUNCTION
END INTERFACE

END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

CONTAINS
FUNCTION int_fun(dum_fun,dd1)
TYPE(ty) :: int_fun
CLASS(ty) :: dd1
type(ty2) :: d2
  PROCEDURE(efun) :: dum_fun
  INTERFACE operator(/)
    PROCEDURE :: dum_fun
  END INTERFACE operator(/)

int_fun = dd1/d2
END FUNCTION

END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE

TYPE(ty) :: res,obj
res = int_fun(efun,obj)

IF(res%num .EQ. 28) THEN
  PRINT*,"pass"
ELSE
  PRINT*,"ERROR",res%num
END IF

END PROGRAM

FUNCTION efun(dd1,dd2)
  USE m1
  CLASS(ty),intent(in) :: dd1,dd2
  CLASS(ty),ALLOCATABLE :: efun
  ALLOCATE(ty :: efun)
  SELECT TYPE(efun)
    TYPE IS(ty)
      select type(dd2)
      type is(ty2)
      efun%num = dd1%num * dd2%num2
      end select
  END SELECT
END FUNCTION
