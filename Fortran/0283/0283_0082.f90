PROGRAM main
IMPLICIT NONE

INTEGER,POINTER :: aa
INTEGER,POINTER :: yy
INTEGER,TARGET :: xx
xx = 10
aa => xx

ASSOCIATE(bb => aa)
  yy => bb  
END ASSOCIATE

IF(yy .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM