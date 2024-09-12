PROGRAM main
IMPLICIT NONE

INTEGER(kind = 4) :: num1,num2,res
PROCEDURE(mod),POINTER :: ppfun
PROCEDURE(dim),POINTER :: cpfun

INTERFACE gnr
 PROCEDURE ppfun
 PROCEDURE :: cpfun
END INTERFACE

num1 = 12
num2 = 5

ppfun => mod
cpfun => dim

res = gnr(num1,num2)

IF(res .EQ. 2) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

