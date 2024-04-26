PROGRAM main

INTEGER :: a(10) = 0,n=2,m=1,l=3

ASSOCIATE(b => a(n*m : ))
  b( : n+((n*l)+(n*m))-1) = 1
END ASSOCIATE

IF(ALL(a(2:10) == 1)) THEN
  a(2:10) = 0
ELSE
  a(2:10) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
