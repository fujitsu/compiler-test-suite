MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num(10)
  CONTAINS
  PROCEDURE,NOPASS :: gnr => esub
END TYPE

INTERFACE
SUBROUTINE esub(dd1)
  IMPORT ty
  TYPE(ty) :: dd1
END SUBROUTINE 
END INTERFACE

CONTAINS
SUBROUTINE mod_sub(dd1)
TYPE(ty) :: dd1
INTERFACE gnr
  PROCEDURE esub
END INTERFACE
CALL gnr(dd1)
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
obj%num = [-1,2,-1,2,-1,2,-1,2,-1,2]
CALL mod_sub(obj)

IF(ALL(obj%num(2:10:2) .EQ. 4)) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

SUBROUTINE esub(dd1)
  USE mod1
  TYPE(ty) :: dd1
  INTEGER :: ii
  FORALL(ii = 1 : 10)
    WHERE(dd1%num > 0)
       dd1%num = dd1%num * 2 
    ELSE WHERE
       dd1%num = dd1%num - 1
    END WHERE
  END FORALL
END SUBROUTINE
