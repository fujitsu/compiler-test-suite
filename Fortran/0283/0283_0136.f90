PROGRAM main
IMPLICIT NONE

INTEGER :: num = 5,i=2 ,x=0

ASSOCIATE(bb => i)
DO bb = 1,num
      x = i + x
END DO
END ASSOCIATE

IF(x .EQ. 15) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END
