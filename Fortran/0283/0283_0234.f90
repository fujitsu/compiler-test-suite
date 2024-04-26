MODULE mod1

TYPE point
  INTEGER :: pt
  CONTAINS
  PROCEDURE, PASS(b) :: new_point
END TYPE

  CONTAINS
  INTEGER FUNCTION new_point(a,b)
    INTEGER,INTENT(IN) :: a
    CLASS(point),INTENT(IN) :: b
    new_point = a * b%pt
  END FUNCTION

END MODULE

PROGRAM main

USE mod1
INTEGER :: arr(10) = 0,n=2
TYPE(point) :: m,obj
m%pt = 1
obj%pt = 4

ASSOCIATE(b => arr(n : obj%pt * n : new_point(n,m)))
  b(n : :new_point(n,m)) = 1
END ASSOCIATE

IF(ALL(arr(4:8:4) == 1)) THEN
  arr(4:8:4) = 0
ELSE
  arr(4:8:4) = 1
END IF

IF(ALL(arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM   
