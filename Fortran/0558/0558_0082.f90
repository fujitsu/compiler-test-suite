MODULE mod1
IMPLICIT NONE

type ty
real::num2
end type

INTERFACE
SUBROUTINE extsub(d1,d2)
import ty
  real,intent(OUT) :: d1
  TYPE(ty),Intent(IN) ::d2 
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE msub(dd1,dd2)
  TYPE(ty),Intent(out) ::dd1 
  real,intent(IN) :: dd2
  dd1% num2 = dd2 
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(extsub) :: npsub

INTERFACE assignment(=) 
  MODULE PROCEDURE msub
  PROCEDURE npsub
END INTERFACE

type(ty)::obj
real::rr
obj%num2 = 4.444
rr = obj

IF(rr .EQ. 4.444) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE npsub(dd1,dd2)
use mod1
  real,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
