MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10)=0,n=2,m=3
TYPE(tt) :: obj
obj%i=1

ASSOCIATE(b=>a(1:10))
  b((n+m)*obj%i : )=1
END ASSOCIATE

IF(ALL(a(5:10)==1)) THEN
  a(5:10) = 0
ELSE
  a(5:10) = 1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
