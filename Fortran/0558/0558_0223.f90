MODULE mod1
IMPLICIT NONE

type ty
real::num2
end type

INTERFACE 
SUBROUTINE psub(dd1,dd2)
import ty
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
END SUBROUTINE
SUBROUTINE qsub(dd1,dd2)
import ty
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
END SUBROUTINE
END INTERFACE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
PROCEDURE(qsub) :: npsub

INTERFACE assignment(=)
  PROCEDURE npsub
  PROCEDURE :: psub
END INTERFACE

real::rr
type(ty)::obj
obj%num2 = 2.345
rr = obj

IF(rr .EQ. 2.345) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE psub(dd1,dd2)
Use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE
SUBROUTINE npsub(dd1,dd2)
Use mod1
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2%num2
END SUBROUTINE

