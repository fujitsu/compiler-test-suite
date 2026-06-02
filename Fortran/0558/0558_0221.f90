MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num2
END TYPE

INTERFACE
SUBROUTINE psub(dd1,dd2)
import ty 
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE qsub(dd1,dd2)
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(qsub),POINTER :: ppsub
PROCEDURE(psub),POINTER :: cpsub

INTERFACE assignment(=) 
 PROCEDURE ppsub, cpsub
END INTERFACE

Integer::num
type(ty):: obj
obj%num2 = 5
ppsub => qsub
cpsub => psub

num = obj
IF(num .EQ. 5) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE psub(dd1,dd2)
  USE mod1
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE
