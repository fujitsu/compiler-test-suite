PROGRAM main

INTEGER :: a(10)=0,n=1,m=2

ASSOCIATE(b=>a(:fun()))
  b(n*m) = 1
END ASSOCIATE

IF(a(2) .EQ. 1) THEN
  a(2) = 0
ELSE
  a(2) = 1
END IF

IF(ALL(a(1:10) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun=8
END FUNCTION

END PROGRAM
