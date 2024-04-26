MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n1
  REAL :: r1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: nn 

ASSOCIATE(aa => t1(2,3.0) , bb => t1(3,4.0))
  IF(aa%n1 .LT. bb%n1) THEN
    nn = 1
  ELSE
    nn = 0
  END IF
  CALL sub(aa%r1,bb%r1,nn)
END ASSOCIATE

IF(nn .EQ. 2) PRINT*,'pass'

CONTAINS

SUBROUTINE sub(d1,d2,d3)
REAL :: d1,d2
INTEGER :: d3
IF(d1 .LT. d2) THEN
  d3 = d3 + 1
ELSE
  d3 = d3 - 1
END IF
END SUBROUTINE

END PROGRAM
