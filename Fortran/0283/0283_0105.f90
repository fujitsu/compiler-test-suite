PROGRAM main
IMPLICIT NONE

INTEGER :: num = 10

ASSOCIATE(bb => num)
  bb = bb + 2
  GOTO 30
  30  bb = bb / 2
      bb = bb + 2
END ASSOCIATE

IF(num .EQ. 8) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
