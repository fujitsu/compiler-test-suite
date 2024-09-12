MODULE mod1
IMPLICIT NONE
type ty
integer::num
end type

INTERFACE
SUBROUTINE msub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE qsub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num = dd2
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(msub) :: npsub
INTERFACE assignment (=) 
 PROCEDURE :: npsub
  MODULE PROCEDURE qsub
END INTERFACE

Integer::num1
TYPE(ty)::obj
num1 = 10

obj  = num1
IF(obj%num .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE npsub(dd1,dd2)
use mod1
  TYPE(ty),Intent(out) ::dd1 
  REAL,intent(IN) :: dd2
  dd1%num = dd2
END SUBROUTINE
