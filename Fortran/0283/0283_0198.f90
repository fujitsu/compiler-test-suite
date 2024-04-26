MODULE  mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(5)=0
TYPE(tt) :: obj1,obj2
obj1%i=1
obj2%i=3

ASSOCIATE(b=>a(3:5))
  b(obj1%i:obj2%i)=1
END ASSOCIATE

IF(ALL(a(3:5)==1)) THEN
  a(3:5) = 0
ELSE
  a(3:5) = 1
END IF

IF(ALL(a(1:5) == 0)) THEN 
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
