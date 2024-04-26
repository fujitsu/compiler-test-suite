PROGRAM main
IMPLICIT NONE

INTEGER :: num = 0,arr(10) = 0

ASSOCIATE(bb => num)
  DO bb = 1,10,2
  arr(bb) = 1 
  END DO
END ASSOCIATE

IF(ALL(arr(1:10:2) .EQ. 1)) THEN
  arr(1:10:2) = 0
ELSE
  arr(1:10:2) = 1
END IF

IF(ALL(arr(1:10) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
