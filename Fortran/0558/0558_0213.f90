MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num1
END TYPE

INTERFACE
SUBROUTINE qsub(dd1,dd2)
  IMPORT ty
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
END subroutine
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num1
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

call sub(psub)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(psub) :: dum

INTERFACE assignment(=) 
  PROCEDURE :: dum
  PROCEDURE qsub
END INTERFACE

type(ty)::obj
integer::num
num = 22
obj = num

IF(obj%num1 .EQ. 44) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE
END PROGRAM

SUBROUTINE qsub(dd1,dd2)
use mod1
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num1 = dd2 + dd2 
END SUBROUTINE


