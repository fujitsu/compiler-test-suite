MODULE mod1
IMPLICIT NONE
type ty
real:: num2
end type

INTERFACE
SUBROUTINE qsub(dd1,dd2)
import ty
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE

INTEGER FUNCTION mfun()
PROCEDURE(qsub),POINTER :: ppsub

INTERFACE Assignment(=) 
  PROCEDURE psub, ppsub
END INTERFACE

real::rr
type(ty)::obj
obj%num2 = 31
ppsub => qsub
rr = obj
IF(rr .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

mfun = rr
END FUNCTION
END MODULE

PROGRAM main
USE mod1
INTEGER :: res
res = mfun()
print*,res
END PROGRAM

SUBROUTINE qsub(dd1,dd2)
use mod1
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2%num2 
END SUBROUTINE
