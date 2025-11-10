MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: num = 14
END TYPE

INTERFACE 
  FUNCTION efun(dd1)
  IMPORT ty
    CLASS(ty) :: dd1
    CLASS(ty),pointer :: efun
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

IF(res%num .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

FUNCTION nondmy(dd1)
  USE mod1
  CLASS(ty) :: dd1
  CLASS(ty),pointer :: nondmy
  type(ty),target,save :: tar
  nondmy=>tar
  SELECT TYPE(nondmy)
    TYPE IS(ty)
      dd1%num = dd1%num * 2
      nondmy = dd1
  END SELECT
END FUNCTION

