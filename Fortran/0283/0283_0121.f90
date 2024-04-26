PROGRAM main
IMPLICIT NONE

INTEGER :: num = 2,i,n = 0

ASSOCIATE(bb => num)
  DO i = 10,1,-bb
    n = n + i
  END DO
END ASSOCIATE

IF(n .EQ. 30) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
