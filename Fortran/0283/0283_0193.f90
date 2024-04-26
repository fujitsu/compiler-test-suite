MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE
END MODULE 

PROGRAM main

USE mod1
INTEGER ::a(6)=0
TYPE(tt) :: ob1,ob2 
ob1%i=1
ob2%i=6

ASSOCIATE(b=>a)
  b(ob1%i:ob2%i:fun())=1
END ASSOCIATE

IF(ALL(a(1:6:2)==1)) THEN
  a(1:6:2) = 0
ELSE
  a(1:6:2) = 1
END IF

IF(ALL(a(1:6) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun=2
END FUNCTION

END PROGRAM 
