MODULE mod1
IMPLICIT NONE

REAL :: num1,num2,res

INTERFACE 
SUBROUTINE psub(d1)
  INTEGER :: d1
END SUBROUTINE
SUBROUTINE qsub(dd1,dd2)
  REAL :: dd1,dd2
END SUBROUTINE
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(qsub) :: npsub

INTERFACE gnr
  PROCEDURE npsub
  PROCEDURE :: psub
END INTERFACE

num1 = 5.0
num2 = 7.0

CALL gnr(num1,num2)

IF(num1 .EQ. 10.0 .AND. num2 .EQ. 21.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

SUBROUTINE psub(d1)
INTEGER :: d1
  d1 = d1 * 5
END SUBROUTINE

SUBROUTINE outfun(dd1,dd2,dd3)
  REAL :: dd1,dd2,dd3
  dd1 = dd1 + dd3
  dd2 = dd2 + dd3
  dd3 = dd1 + dd2
  ENTRY npsub(dd1,dd2)
  dd1 = dd1 * 2.0
  dd2 = dd2 * 3.0
END SUBROUTINE
