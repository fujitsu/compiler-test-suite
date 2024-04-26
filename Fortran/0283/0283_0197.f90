PROGRAM main

INTEGER :: a(8)=0,n=2,m=4

ASSOCIATE(b=>a(1:8))
  b(m:n*m) = 1
END ASSOCIATE

IF(ALL(a(4:8)==1)) THEN
  a(4:8) = 0
ELSE
  a(4:8) =1
END IF

IF(ALL(a(1:8) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
