PROGRAM main

INTEGER :: a(8)=0

ASSOCIATE(b=>a(:fun()))
  b(:fun()) = 1
END ASSOCIATE

IF(ALL(a(1:6) .EQ. 1)) THEN 
  a(1:6) = 0
ELSE
  a(1:6) = 1
END IF

IF(ALL(a(1:8) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun=6
END FUNCTION

END PROGRAM
