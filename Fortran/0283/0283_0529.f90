MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: num = 0
REAL,DIMENSION(10) :: arr = 0.0
TYPE(t1) :: obj
obj%rr = 1.0

ASSOCIATE(aa => num , bb => arr , cc => obj)
  DO aa = 1,10,2
    bb(aa) = cc%rr
  END DO
END ASSOCIATE

IF(ALL(arr(1:10:2) .EQ. 1.0)) THEN
  arr(1:10:2) = 0.0
ELSE
  arr(1:10:2) = 1.0
END IF

IF(ALL(arr(1:10) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM 
