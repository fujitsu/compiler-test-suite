MODULE mod1

TYPE point
  INTEGER :: pt
  CONTAINS
  PROCEDURE ::  new_point 
END TYPE

  CONTAINS
  INTEGER FUNCTION new_point(a,b)
    CLASS(point),INTENT(IN) :: a
    INTEGER,INTENT(IN) :: b
    new_point = a%pt * b
  END FUNCTION

END MODULE

PROGRAM main

USE mod1
INTEGER :: arr(10) = 0,m=1
TYPE(point) :: n
n%pt = 2

ASSOCIATE(b => arr(new_point(n,m) : (n%pt)*3+(m*n%pt)))
  b(new_point(n,m): n%pt * new_point(n,m)) = 1
END ASSOCIATE

IF(ALL(arr(3:5) == 1)) THEN
  arr(3:5) = 0
ELSE
  arr(3:5) = 1
END IF

IF(ALL(arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
