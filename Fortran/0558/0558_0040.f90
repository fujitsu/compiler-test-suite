MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: num1
END TYPE
TYPE ty2
  TYPE(ty) :: nes_ob
END TYPE 

CONTAINS
FUNCTION mfun(d1,d2)
  TYPE(ty2) :: d1,mfun
  TYPE(ty) :: d2
  d1%nes_ob%num1 = d1%nes_ob%num1 + d2%num1
  d2%num1 = 2
  mfun%nes_ob%num1 = d1%nes_ob%num1 + d2%num1
END FUNCTION

END MODULE


MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE
FUNCTION intfun(d1,d2)
  IMPORT ty2
  TYPE(ty2) :: d1,d2,intfun
END FUNCTION
END INTERFACE

CONTAINS
SUBROUTINE sub(d1,d2)
TYPE(ty2) :: d1,d2,res

INTERFACE gnr
  PROCEDURE :: intfun
  FUNCTION extfun(d1,d2)
    IMPORT ty2
    TYPE(ty2) :: d1,extfun
    REAL :: d2
  END FUNCTION
  MODULE PROCEDURE mfun
END INTERFACE

res = gnr(d1,d2)

IF(res%nes_ob%num1 .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
  
END SUBROUTINE

END MODULE


PROGRAM main
USE mod2
IMPLICIT NONE

TYPE(ty2) :: obj1,obj2

obj1%nes_ob%num1 = 5.0
obj2%nes_ob%num1 = 6.0

CALL sub(obj1,obj2)

END PROGRAM

FUNCTION extfun(d1,d2)
USE mod1
TYPE(ty2) :: d1,extfun
REAL :: d2
d1%nes_ob%num1 = d1%nes_ob%num1 + 2
d1%nes_ob%num1 = d2 + 2.0
extfun%nes_ob%num1 = d1%nes_ob%num1 + d2
END FUNCTION

FUNCTION intfun(d1,d2)
  USE mod1
  TYPE(ty2) :: d1,d2,intfun
  d1%nes_ob%num1 = d1%nes_ob%num1 * 2.0
  d2%nes_ob%num1 = d2%nes_ob%num1 * 3.0
  intfun%nes_ob%num1 = d1%nes_ob%num1 + d2%nes_ob%num1
END FUNCTION

