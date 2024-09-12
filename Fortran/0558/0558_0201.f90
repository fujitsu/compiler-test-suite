module mm
type tt
 integer :: cc(5,5)=56
end type
end module

MODULE mod1
use mm
type(tt),save :: obj
INTEGER,DIMENSION(5,5) :: num

INTERFACE
FUNCTION mfun(dd1,dd2)
  import tt
  type(tt),intent(in) :: dd1
  INTEGER,DIMENSION(5,5),intent(in) :: dd2
  type(tt)::mfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION mod_fun()
type(tt)::mod_fun

PROCEDURE(mfun) :: prc
INTERFACE operator(/)
  PROCEDURE :: prc
END INTERFACE operator(/)

num=2
mod_fun = obj/num

IF(mod_fun%cc(2,2) .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

type(tt) :: res
res = mod_fun()
print*,res%cc(2,2)

END PROGRAM

FUNCTION prc(dd1,dd2)
  use mm
  type(tt),intent(in) :: dd1
  INTEGER,DIMENSION(5,5),intent(in) :: dd2
  type(tt)::prc
  prc%cc = dd1%cc/dd2+1-1
END FUNCTION
