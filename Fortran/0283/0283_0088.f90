PROGRAM main
IMPLICIT NONE

INTEGER :: num = 20

ASSOCIATE(bb => num)
 10 IF (bb > 2) THEN
      bb = bb - 2
      GOTO 10
    END IF
END ASSOCIATE

IF(num .EQ. 2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM     
