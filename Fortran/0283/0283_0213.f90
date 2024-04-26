PROGRAM main

INTEGER :: a(10)=0,n=1,m=2

ASSOCIATE(b=>a(fun():))
  b(n*m) = 1
END ASSOCIATE

IF(a(5) .EQ. 1) THEN
  a(5) = 0
ELSE
  a(5) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun=4
END FUNCTION

END PROGRAM
