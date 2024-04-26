MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10)=0
TYPE(tt) :: obj
obj%i = 5

ASSOCIATE(b=>a(:8))
  b(obj%i) = 1
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

END PROGRAM 
