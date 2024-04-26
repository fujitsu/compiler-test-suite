MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0
TYPE(tt) :: obj
obj%i = 2

ASSOCIATE(b => a(obj%i : ))
  b( : : (fun()/obj%i)) = 1
END ASSOCIATE

IF(ALL(a(2:10:2) == 1)) THEN
  a(2:10:2) = 0
ELSE
  a(2:10:2) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 4
END FUNCTION

END PROGRAM
