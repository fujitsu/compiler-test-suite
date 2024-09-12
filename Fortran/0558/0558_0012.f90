MODULE mod1
IMPLICIT NONE
type ty
Integer:: num2
end type
INTEGER :: num1
INTERFACE ASSIGNMENT(=) 
  MODULE PROCEDURE psub,qsub
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  INTEGER,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
SUBROUTINE qsub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  INTEGER,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
type(ty)::obj
obj%num2 = 10
num1 = obj

IF(num1 .EQ. 10)  THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

