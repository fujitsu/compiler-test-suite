MODULE mod1

TYPE t1
  INTEGER :: arr(10),i
  CONTAINS 
  PROCEDURE :: nw
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

  CONTAINS
  INTEGER FUNCTION nw(a,b)
    CLASS(t1), INTENT(IN) :: a
    INTEGER,INTENT(IN) :: b
    nw = a%i * b
  END FUNCTION

END MODULE

PROGRAM main

USE mod1
INTEGER :: m =2
TYPE(t2) :: ob_2
TYPE(t1) :: n
n%i = 4
ob_2%tt_1%arr = 0
ob_2%tt_1%i = 2

ASSOCIATE(b => ob_2%tt_1%arr)
  b(ob_2%tt_1%i : nw(n,m)) = 1
END ASSOCIATE 

IF(ALL(ob_2%tt_1%arr(2:8) == 1 )) THEN
  ob_2%tt_1%arr(2:8) = 0 
ELSE
  ob_2%tt_1%arr(2:8) = 1 
END IF

IF(ALL(ob_2%tt_1%arr(1:10) == 0 )) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
