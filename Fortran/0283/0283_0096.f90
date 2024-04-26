PROGRAM main
IMPLICIT NONE

INTEGER :: num = 20,i

ASSOCIATE(bb => num)
  DO i = 1,5
    bb = bb - 5
    IF(bb < 5) THEN
       bb = 0
     ELSE
       CONTINUE
     END IF
  END DO
END ASSOCIATE

IF(num .EQ. 0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
