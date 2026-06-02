MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num1
END TYPE

INTERFACE
SUBROUTINE psub(dd1,dd2)
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

CONTAINS
SUBROUTINE msub()

PROCEDURE(psub),POINTER :: ppsub

INTERFACE assignment (=) 
 PROCEDURE ppsub
 PROCEDURE qsub
END INTERFACE

Integer::num
type(ty)::obj
ppsub => psub
num = 10
obj = num

IF(obj%num1 .EQ. 10) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
CALL msub()
END PROGRAM

SUBROUTINE psub(dd1,dd2)
use mod1
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num1
END SUBROUTINE
SUBROUTINE qsub(dd1,dd2)
use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num1= dd2 
END SUBROUTINE
