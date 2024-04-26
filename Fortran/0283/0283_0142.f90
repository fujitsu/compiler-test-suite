MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr1
END TYPE

END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

TYPE(t1) :: obj1
obj1%rr1 = 1.0

ASSOCIATE(aa => obj1)
  IF(aa%rr1 .LT. 0.0) THEN
    aa%rr1 = 0.0
  ELSE IF(aa%rr1 .GT. 0.0) THEN
    aa%rr1 = 10.0
  ELSE
    aa%rr1 = 1.1
  END IF
  IF(aa%rr1 .EQ.10.0) aa%rr1 = 0.0
END ASSOCIATE

IF(obj1%rr1 .EQ. 0.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101

END IF

END PROGRAM
