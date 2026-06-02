MODULE mod1
IMPLICIT NONE
type ty
Integer:: num2
end type

Interface
SUBROUTINE msub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
END SUBROUTINE

SUBROUTINE qsub(dd1,dd2)
import ty
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
END INTERFACE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(msub) :: npsub
INTERFACE assignment (=) 
  PROCEDURE :: qsub
  PROCEDURE npsub
END INTERFACE

type(ty)::obj
integer::num
obj%num2 = 2

num = obj
IF(num .EQ. 4) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE npsub(dd1,dd2)
use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE

SUBROUTINE qsub(dd1,dd2)
use mod1
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 *2
END SUBROUTINE

