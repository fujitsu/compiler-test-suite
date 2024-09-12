MODULE mod1
IMPLICIT NONE

type ty
integer::num2
end type

INTERFACE
SUBROUTINE msub(dd1,dd2)
import ty
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
SUBROUTINE qsub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
END SUBROUTINE
END INTERFACE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(msub) :: epsub
PROCEDURE(qsub) :: npsub

INTERFACE assignment(=) 
  PROCEDURE :: epsub
  PROCEDURE npsub
END INTERFACE

type(ty)::obj
integer::num
obj%num2 = 10
num = obj

IF(num .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE epsub(dd1,dd2)
use mod1
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
SUBROUTINE npsub(dd1,dd2)
use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE

