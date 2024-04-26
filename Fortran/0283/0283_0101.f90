PROGRAM main
IMPLICIT NONE

INTEGER :: num = 4,n = 2

ASSOCIATE(bb => num)
  GOTO (20,30,40) , bb - n
  bb = bb * 2
  20 PRINT*,1
  30 bb = bb * 2
  40 bb = bb / 2
END ASSOCIATE

IF(num .EQ. 4) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
