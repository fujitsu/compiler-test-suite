MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num
END TYPE

CONTAINS
FUNCTION pfun(d1,d2)
  INTEGER,intent(IN) :: d1
  type(ty),Intent(IN) ::d2 
  Integer::pfun
  pfun = d1 * d2% num 
END FUNCTION
FUNCTION qfun(dd1,dd2)
  type(ty),intent(IN) :: dd1
  INTEGER,intent(IN) :: dd2
  INTEGER::qfun
  qfun = dd1%num * dd2 * 2
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CALL sub(pfun)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum

INTERFACE operator (*) 
  MODULE PROCEDURE qfun
  PROCEDURE dum
END INTERFACE

INTEGER::num1,r
type(ty),ALLOCATABLE :: obj1
ALLOCATE(ty :: obj1)
obj1%num = 2
num1 = 4

r = obj1 * num1
IF(r .EQ. 16) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE
END PROGRAM

