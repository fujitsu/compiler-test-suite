MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10)=0
TYPE (tt) :: obj,obj2
obj%i=2

ASSOCIATE(b=>a(obj%i:))
  obj2%i=6
  b(obj%i)=obj2%i
END ASSOCIATE

IF(a(3) .EQ. 6) THEN
  a(3) = 0
ELSE
  a(3) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
