MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: ii
END TYPE

PUBLIC :: mfun

CONTAINS
TYPE(ty) FUNCTION mfun(dd1)
  TYPE(ty) :: dd1
  dd1%ii = 2
  mfun = dd1
END FUNCTION
END MODULE


MODULE mod2
USE mod1,pp => mfun

PROCEDURE(mfun),PRIVATE,POINTER :: pprc

INTERFACE gnr
  PROCEDURE pprc
END INTERFACE

CONTAINS
TYPE(ty) FUNCTION mfun(dd1,dd2)
  TYPE(ty) :: dd1
  INTEGER :: dd2
  dd1%ii = dd2
  mfun = dd1
END FUNCTION

SUBROUTINE sub()
pprc => mfun
END SUBROUTINE

END MODULE


PROGRAM main
USE mod2,qq => pp 
IMPLICIT NONE

TYPE(ty) :: obj1,res

INTERFACE gnr
  PROCEDURE qq
END INTERFACE

res = gnr(obj1)

IF(res%ii .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM


