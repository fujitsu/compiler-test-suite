MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) =0 , n=2 , m=1
TYPE(tt) :: obj
obj%i = 2

ASSOCIATE(b => a(n+((n*m)/obj%i) : (obj%i*4) : obj%i))
  b(fun() : ) = 1
END ASSOCIATE
IF(a(7) == 1) THEN
  a(7) = 0
ELSE
  a(7) = 1
END IF

IF(ALL(a(1:10) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 3
END FUNCTION

END PROGRAM
