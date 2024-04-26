PROGRAM main

INTEGER :: a(10)=0,n=2,m=3

ASSOCIATE(b=>a(:8))
  b(n*m)=3
END ASSOCIATE

IF(a(6)==3) THEN
  a(6) = 0
ELSE
  a(6) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN 
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
