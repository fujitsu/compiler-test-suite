PROGRAM main

INTEGER ::a(6)=0,n=2,m=3

ASSOCIATE(b=>a)
  b(:n*m:2)=1
END ASSOCIATE

IF(ALL(a(1:6:2)==1)) THEN
  a(1:6:2) =0
ELSE
  a(1:6:2) =1
END IF

IF(ALL(a(1:6) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
