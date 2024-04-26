PROGRAM main
IMPLICIT NONE

INTEGER :: num = 20,i

ASSOCIATE(bb => num)
  DO i = 1,5
    IF(bb < 5) THEN
       EXIT
     ELSE
       bb = bb-5
     END IF
  END DO
END ASSOCIATE

IF(num < 5) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
