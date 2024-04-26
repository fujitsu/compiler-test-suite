MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10)=0
TYPE(tt) :: obj
obj%i=5

ASSOCIATE(b=>a(2: :fun()))
  b(obj%i) = 1
END ASSOCIATE

IF(a(10) .EQ. 1) THEN
  a(10) = 0
ELSE
  a(10) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun=2
END FUNCTION

END PROGRAM
