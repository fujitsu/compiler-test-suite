MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE
END MODULE

PROGRAM main

USE mod1
INTEGER ::a(6)=0
TYPE(tt) :: obj
obj%i=4

ASSOCIATE(b=>a)
  b(:obj%i)=1
END ASSOCIATE

IF(ALL(a(1:4)==1)) THEN
  a(1:4) = 0
ELSE
  a(1:4) = 1
END IF

IF(ALL(a(1:6)==0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'101'
END IF

END PROGRAM 
