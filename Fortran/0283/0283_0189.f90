MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10) = 0
TYPE(tt) :: ob1,ob2
ob1%i = 2
ob2%i = 8

ASSOCIATE(b=>a)
  b(ob1%i:ob2%i) = 2
END ASSOCIATE

IF(ALL(a(2:8)==2)) THEN
  a(2:8) = 0
ELSE  
  a(2:8) = 1
END IF

IF(ALL(a(1:10)==0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM 
