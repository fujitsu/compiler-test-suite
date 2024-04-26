MODULE mod1

TYPE tt
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main

USE mod1
INTEGER :: a(10)=0,n=2,m=3
TYPE(tt) :: obj
obj%i = 2

ASSOCIATE(b=>a(::obj%i))
  b((n+m)) = 1
END ASSOCIATE

IF(a(9) .EQ. 1) THEN
  a(9) = 0
ELSE
  a(9) =  1
END IF

IF(ALL(a(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
