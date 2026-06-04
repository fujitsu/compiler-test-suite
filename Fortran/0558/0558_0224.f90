MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num2
END TYPE

INTERFACE
SUBROUTINE extsub(dd1,dd2)
import ty
  real,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
SUBROUTINE qsub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
Integer::res

res = fun(psub)
IF(res .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
CONTAINS
FUNCTION fun(dsub)
real ::fun
PROCEDURE(psub) :: dsub
PROCEDURE(qsub),POINTER :: ppsub
PROCEDURE(extsub) :: npsub

INTERFACE assignment(=) 
  PROCEDURE ppsub,dsub, npsub
END INTERFACE
Integer::num
type(ty)::obj
ppsub=>qsub
obj%num2 = 10.90
num = obj

fun = num 
END FUNCTION
END PROGRAM

SUBROUTINE qsub(dd1,dd2)
use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE

SUBROUTINE npsub(dd1,dd2)
use mod1
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2%num2 
END SUBROUTINE
