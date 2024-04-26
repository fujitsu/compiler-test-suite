MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(12) = 0,n=2
TYPE(tt) :: ob
ob%i = 3

ASSOCIATE(b => a((n*1): : fun()))
  b(ob%i:(n*ob%i)) = 1
END ASSOCIATE

IF(ALL(a(6:12:2) .EQ. 1)) THEN
  a(6:12:2) = 0
ELSE
  a(6:12:2) = 1
END IF

IF(ALL(a(1:12) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 2
END FUNCTION

END PROGRAM
