MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num2
END TYPE

Interface
FUNCTION pfun(dd1,dd2)
import ty
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: pfun
END FUNCTION
end interface

CONTAINS
FUNCTION qfun(dd1,dd2)
  TYPE(ty),Intent(IN) ::dd1 
  INTEGER,intent(IN) :: dd2
  Integer :: qfun
  qfun = dd1%num2 - dd2
 print*,qfun
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
CALL sub(qfun)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(qfun) :: dum
PROCEDURE(pfun) :: ppfun

INTERFACE operator(-) 
  PROCEDURE dum
  PROCEDURE ppfun
END INTERFACE

type(ty)::obj
integer::num,res
num = 10 
obj%num2 = 4 
res = num - obj
IF(res .EQ. 6) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE
END PROGRAM

FUNCTION ppfun(dd1,dd2)
use mod1
  INTEGER,intent(IN) :: dd1
  TYPE(ty),Intent(IN) ::dd2
  Integer :: ppfun
  ppfun = dd1 - dd2%num2
END FUNCTION

