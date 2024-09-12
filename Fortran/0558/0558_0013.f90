MODULE mod1
IMPLICIT NONE
type ty
real:: num2
end type

CONTAINS
SUBROUTINE qsub(dd1,dd2)
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE 
SUBROUTINE psub(d1,d2)
Import ty
  TYPE(ty),Intent(OUT) ::d1 
  REAL,intent(IN) :: d2
END SUBROUTINE
END INTERFACE
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE

INTERFACE ASSIGNMENT(=)
  MODULE PROCEDURE qsub
  PROCEDURE psub
END INTERFACE

Real::num1
type(ty)::obj
obj%num2 = 10
num1 = obj

IF(num1 .EQ. 10) THEN
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


