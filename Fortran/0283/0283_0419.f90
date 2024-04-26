PROGRAM main
IMPLICIT NONE

INTEGER,POINTER :: aa
INTEGER :: yy(2,2)
INTEGER,TARGET :: xx
xx = 10
aa => xx

ASSOCIATE(bb => reshape([xx,2,xx,2,xx,2,xx,2,xx],[2,2]))
  yy = bb  
  yy(2,2) = bb(2,2) + 2
  if(yy(2,2) == 4) then
   yy(2,2) = 10
   yy(2,1) = 10
  else
   yy(2,2) = 22
  end if
END ASSOCIATE

IF(all(yy .EQ. 10)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
