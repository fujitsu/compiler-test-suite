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
SUBROUTINE psub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE qsub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  real,intent(IN) :: dd2
  dd1%num2 = dd2 + 2
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(msub) :: npsub
PROCEDURE(qsub),POINTER :: ppsub
PROCEDURE(psub),POINTER :: prcptr

INTERFACE assignment (=) 
  PROCEDURE :: npsub,prcptr, ppsub
END INTERFACE

type(ty)::obj
Integer::num
num =  10
ppsub => qsub
prcptr => psub
obj = num

IF(obj%num2 .EQ. 1) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE npsub(dd1,dd2)
use mod1
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
SUBROUTINE psub(dd1,dd2)
use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num2 = dd2 /dd2 
END SUBROUTINE

