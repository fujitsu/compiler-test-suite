MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num = 14
END TYPE

INTERFACE 
FUNCTION efun(dd1)
IMPORT ty
 CLASS(ty) :: dd1
 type(ty) :: efun
END FUNCTION
END INTERFACE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: res,obj
PROCEDURE(efun) :: nondmy

INTERFACE gnr
  PROCEDURE :: nondmy 
END INTERFACE

res = gnr(obj)
IF(res%num .EQ. 14) THEN 
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

FUNCTION nondmy(dd1)
  USE mod1
  CLASS(ty) :: dd1
  type(ty) :: nondmy
  nondmy = dd1
END FUNCTION

