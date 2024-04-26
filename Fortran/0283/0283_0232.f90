MODULE mod1

TYPE point
  INTEGER :: pt
  CONTAINS
  PROCEDURE :: new_point
END TYPE

CONTAINS

INTEGER FUNCTION new_point(a,b)
  CLASS (point), INTENT (IN) :: a
  INTEGER,INTENT(IN) :: b
  new_point = a%pt*b
END FUNCTION  

END MODULE

PROGRAM main

USE mod1
INTEGER :: arr(10) = 0,m=4
TYPE(point) :: n
n%pt = 2

ASSOCIATE(b => arr(n%pt : new_point(n,m)))
  b(m/(n%pt)+1) = 1
END ASSOCIATE

IF(arr(4) == 1) THEN
  arr(4) = 0
ELSE
  arr(4) = 1
END IF

IF(ALL(arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
