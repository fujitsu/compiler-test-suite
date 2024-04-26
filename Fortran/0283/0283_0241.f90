MODULE mod1

TYPE t1
  INTEGER :: arr(10)
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(2,3)
END TYPE

TYPE t3
  TYPE(t2) :: tt_2(3)
END TYPE

END MODULE

PROGRAM main

USE mod1
TYPE(t3) :: ob_3
TYPE(t2) :: ob_2
ob_3%tt_2(2)%tt_1(1,3)%arr = 0
ob_2%tt_1(1,1)%arr(2) = 8

ASSOCIATE(b => ob_3%tt_2(2)%tt_1(1,3)%arr)
  b(fun() : ob_2%tt_1(1,1)%arr(2)) = 1
END ASSOCIATE

IF(ALL(ob_3%tt_2(2)%tt_1(1,3)%arr(2:8) == 1)) THEN
  ob_3%tt_2(2)%tt_1(1,3)%arr(2:8) = 0
ELSE
  ob_3%tt_2(2)%tt_1(1,3)%arr(2:8) = 1
END IF

IF(ALL(ob_3%tt_2(2)%tt_1(1,3)%arr == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun()
  INTEGER :: fun
  fun = 2
END FUNCTION

END PROGRAM
