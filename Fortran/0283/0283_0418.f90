PROGRAM main
IMPLICIT NONE

INTEGER :: yy(2)
INTEGER :: xx
xx = 10

ASSOCIATE(bb => [xx,xx])
  yy = bb  
  yy(2) = bb(2) + 2
  if(yy(2) == 12) then
   yy(2) = 10
  else
   yy(2) = 22
  end if
END ASSOCIATE

IF(all(yy .EQ. 10)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
