module mm
type tt
 REAL :: res(2,3)=0.0
end type
end module

MODULE mod1
IMPLICIT NONE

REAL :: num(2,3)

INTERFACE
subroutine efun(d1,dd1)
  use mm
  REAL,DIMENSION(2,3),intent(in) :: dd1
  type(tt),intent(out) :: d1
END subroutine 
END INTERFACE

END MODULE

PROGRAM main
USE mod1
use mm
IMPLICIT NONE

type(tt) :: obj

INTERFACE assignment(=)
  PROCEDURE efun
END INTERFACE assignment(=)

num = 14.0
obj = num

IF(ALL(obj%res(1:2,1:3) .EQ. 28.0)) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

subroutine efun(d1,dd1)
  use mm
  REAL,DIMENSION(2,3),intent(in) :: dd1
  type(tt),intent(out) :: d1
  d1%res = dd1 * 2.0
END subroutine 
