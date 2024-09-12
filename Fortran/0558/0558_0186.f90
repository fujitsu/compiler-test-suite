MODULE mod1
IMPLICIT NONE

INTEGER,DIMENSION(5,5) :: num = 14

INTERFACE
FUNCTION mfun(dd1)
  INTEGER,DIMENSION(5,5) :: dd1,mfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION mod_fun()
INTEGER :: mod_fun(5,5)

PROCEDURE(mfun) :: prc
INTERFACE gnr
  PROCEDURE :: prc
END INTERFACE

mod_fun = gnr(num)

END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER,DIMENSION(5,5) :: res
res = mod_fun()

IF(ALL(res(1:5,1:5) .EQ. 28)) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION prc(dd1)
  INTEGER,DIMENSION(5,5) :: dd1,prc
  dd1 = dd1 * 2
  prc = dd1
END FUNCTION