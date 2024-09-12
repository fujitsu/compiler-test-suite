MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num
END TYPE

CONTAINS
subroutine pfun(d1,d2)
  INTEGER,intent(OUT) :: d1
  type(ty),Intent(IN) ::d2 
  d1 = d2% num 
END SUBROUTINE
SUBROUTINE qfun(dd1,dd2)
  type(ty),intent(OUT) :: dd1
  INTEGER,intent(IN) :: dd2
  dd1%num = dd2 * 2
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CALL sub(pfun)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum

INTERFACE ASSIGNMENT (=)
  MODULE PROCEDURE qfun
  PROCEDURE dum
END INTERFACE

INTEGER::num1
type(ty),ALLOCATABLE :: obj1
ALLOCATE(ty :: obj1)

num1 = 4
obj1 = num1

IF(obj1%num .EQ. 8) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE
END PROGRAM

