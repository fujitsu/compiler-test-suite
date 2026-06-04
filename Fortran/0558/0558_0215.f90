MODULE mod1
IMPLICIT NONE
type ty
real::num2
end type

CONTAINS
SUBROUTINE msub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
  dd1%num2 = dd2 + 0.2 
END SUBROUTINE
END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE
SUBROUTINE extsub(d1,d2)
import ty
  REAL,intent(OUT) :: d1
  TYPE(ty),Intent(IN) ::d2 
END SUBROUTINE
SUBROUTINE intsub(dd1,dd2)
import ty
  Integer,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
END INTERFACE
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE

call sub(msub)

CONTAINS
subroutine sub(dsub)
  PROCEDURE(msub) :: dsub

INTERFACE assignment(=) 
  PROCEDURE intsub, dsub,extsub
END INTERFACE

type(ty)::obj
Real::rr
rr = 20.0345
obj = rr
IF(obj%num2 .EQ. 20.2345) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END subroutine

END PROGRAM

SUBROUTINE extsub(dd1,dd2)
use mod2
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
SUBROUTINE intsub(dd1,dd2)
use mod2
  Integer,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
