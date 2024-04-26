MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1  
INTEGER :: a(5)=0
TYPE(tt) :: obj
obj%i=1

ASSOCIATE(b=>a(3:))
  b(obj%i)= 1
END ASSOCIATE

IF(a(3)==1) THEN
  a(3) = 0
ELSE
  a(3) = 1
END IF

IF(ALL(a(1:5) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
