module mm
type tt
 REAL :: res(2,3)=0.0
end type

REAL :: num(2,3)
END MODULE

module nmod
use mm

type(tt),save :: obj

INTERFACE assignment(=)
  PROCEDURE efun
END INTERFACE assignment(=)

contains
subroutine efun(d1,dd1)
  use mm
  REAL,DIMENSION(2,3),intent(in) :: dd1
  type(tt),intent(out) :: d1
  d1%res = dd1 * 2.0
END subroutine 
end module

module fin

contains
subroutine ss
use nmod
num = 14.0
obj = num

IF(ALL(obj%res(1:2,1:3) .EQ. 28.0)) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
end subroutine
end module

use fin
call ss
END PROGRAM

