PROGRAM main

INTEGER :: a(5)=0,n=2,m=1

ASSOCIATE(b=>a((n+m):5))
  b(1)=1
END ASSOCIATE

IF(a(3)==1) THEN
  a(3)= 0
ELSE
  a(3) =1
END IF

IF(ALL(a(1:5) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
