PROGRAM main
IMPLICIT NONE

INTEGER :: num = 10 , i = 0

ASSOCIATE(bb => num)
  DO WHILE(i < bb)
    i = i + 1
  END DO
END ASSOCIATE

IF(i .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM