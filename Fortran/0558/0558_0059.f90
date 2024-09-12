MODULE mod1
IMPLICIT NONE

REAL :: num1,num2,res

INTERFACE 
SUBROUTINE extsub(d1,d2)
  INTEGER :: d1,d2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE psub(dd1,dd2)
  REAL :: dd1,dd2
  dd1 = dd1 + 10.0
  dd2 = dd2 + 20.0
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(psub),POINTER :: ppsub

INTERFACE gnr
  PROCEDURE ppsub
  PROCEDURE :: extsub
END INTERFACE

num1 = 5.0
num2 = 7.0

ppsub => psub

CALL gnr(num1,num2)

IF(num1 .EQ. 15.0 .AND. num2 .EQ. 27.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

SUBROUTINE extsub(d1,d2)
  INTEGER :: d1,d2
  d1 = d1 * 2
  d2 = d1 * d2
END SUBROUTINE