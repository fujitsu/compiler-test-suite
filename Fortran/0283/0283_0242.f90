MODULE mod1

TYPE point
  INTEGER :: pt,arr(10)
  CONTAINS
  PROCEDURE :: nw_pt
END TYPE

TYPE point_2
  TYPE(point) :: tt_1
END TYPE

  CONTAINS 
  INTEGER FUNCTION nw_pt(a,b)
    CLASS(point),INTENT(IN) :: a
    INTEGER,INTENT(IN) :: b
    nw_pt = a%pt  * b
  END FUNCTION

END MODULE

PROGRAM main

USE mod1
INTEGER :: m = 1
TYPE(point) :: n
TYPE(point_2) :: pt_2
pt_2%tt_1%arr = 0
n%pt = 2

ASSOCIATE(b => pt_2%tt_1%arr )
  b(nw_pt(n,m) : ) = 1
END ASSOCIATE

IF(ALL(pt_2%tt_1%arr(2:10) == 1)) THEN
  pt_2%tt_1%arr(2:10) = 0
ELSE
  pt_2%tt_1%arr(2:10) = 1
END IF

IF(ALL(pt_2%tt_1%arr == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
