MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num1
END TYPE

CONTAINS
FUNCTION mfun(d1,d2)
  INTEGER :: d1,d2,mfun
  d1 = d1 + d2
  d2 = 2
  mfun = d1 + d2
END FUNCTION

END MODULE


MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE
FUNCTION intfun(d1,d2)
  IMPORT ty
  TYPE(ty) :: d1,d2,intfun
END FUNCTION
END INTERFACE

CONTAINS
SUBROUTINE sub(d1,d2)
TYPE(ty) :: d1,d2,res
PROCEDURE(intfun) :: npfun

INTERFACE gnr
  FUNCTION extfun(d1,d2)
    INTEGER :: d1,extfun
    REAL :: d2
  END FUNCTION
  PROCEDURE :: npfun
  MODULE PROCEDURE mfun
END INTERFACE

res = gnr(d1,d2)

IF(res%num1 .EQ. 28.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
 
END SUBROUTINE

END MODULE


PROGRAM main
USE mod2
IMPLICIT NONE

TYPE(ty) :: obj1,obj2

obj1%num1 = 5.0
obj2%num1 = 6.0

CALL sub(obj1,obj2)

END PROGRAM

FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
extfun = d1 + int(d2)
END FUNCTION

FUNCTION outfun(d1,d2,d3)
  USE mod1
  TYPE(ty) :: d1,d2,d3,outfun,npfun
  outfun%num1 = d1%num1 + d2%num1 + d3%num1
  RETURN
  ENTRY npfun(d1,d2)
  d1%num1 = d1%num1 * 2.0
  d2%num1 = d2%num1 * 3.0
  npfun%num1 = d1%num1 + d2%num1
  RETURN
END FUNCTION

