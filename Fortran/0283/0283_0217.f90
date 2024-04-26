MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10)=0
TYPE (tt) :: obj,obj2
obj%i=6

ASSOCIATE(b=>a(:obj%i))
  obj2%i=3
  b((obj%i))=obj2%i
END ASSOCIATE

IF(a(6)==3) THEN
  a(6) = 0
ELSE
  a(6) = 1
END IF

IF(ALL(a(1:10) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
