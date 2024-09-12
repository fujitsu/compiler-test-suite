MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num
END TYPE

CONTAINS
FUNCTION pfun(d1,d2)
  type(ty),Intent(IN) ::d1 
  INTEGER,intent(IN) :: d2
  Integer::pfun
  pfun = d1%num - d2
END FUNCTION
FUNCTION qfun(dd1,dd2)
  INTEGER,intent(IN) :: dd1
  type(ty),intent(IN) :: dd2
  Integer::qfun
  qfun = (dd1 - dd2%num )* 5
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
Integer::res , num 
PROCEDURE(pfun),POINTER :: ppfun

INTERFACE operator(-) 
 PROCEDURE ppfun
 MODULE PROCEDURE qfun
END INTERFACE

obj%num = 10
num = 5
ppfun => pfun

res =  num - obj

IF(res .EQ. -25) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

