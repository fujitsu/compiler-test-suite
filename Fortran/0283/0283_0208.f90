PROGRAM main

INTEGER :: a(8)=0

ASSOCIATE(b=>a(:))
  b(fun()) = 1
END ASSOCIATE

IF(a(5) .EQ. 1) THEN
  a(5) = 0
ELSE
  a(5) = 1
END IF

IF(ALL(a(1:8)==0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 5
END FUNCTION

END PROGRAM
