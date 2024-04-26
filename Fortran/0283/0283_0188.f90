MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(3)=0
TYPE(tt) :: obj
obj%i=1

ASSOCIATE(b=>a)
  b(obj%i)=2
END ASSOCIATE

IF(a(1)==2) THEN
  a(1)=0
ELSE
  a(1)=1
END IF

IF(ALL(a(1:3)==0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM
