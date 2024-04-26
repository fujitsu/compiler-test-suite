MODULE mod1

TYPE t1
  INTEGER :: i
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

TYPE t3
  TYPE(t2) :: tt_2
END TYPE

END MODULE

PROGRAM main

USE mod1
TYPE(t3) :: arr(10)
TYPE(t2) :: ob_2
TYPE(t1) :: ob_1
arr%tt_2%tt_1%i = 0
ob_2%tt_1%i = 2
ob_1%i = 8

ASSOCIATE(b => arr(ob_2%tt_1%i : ob_1%i))
  b(ob_2%tt_1%i : fun(ob_1))%tt_2%tt_1%i = 1
END ASSOCIATE

IF(ALL(arr(3:7)%tt_2%tt_1%i == 1)) THEN
  arr(3:7)%tt_2%tt_1%i = 0
ELSE
  arr(3:7)%tt_2%tt_1%i = 1
END IF

IF(ALL(arr(1:10)%tt_2%tt_1%i == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS 

INTEGER FUNCTION fun(o_1)
  TYPE(t1) :: o_1
  o_1%i = 6
  fun = o_1%i 
END FUNCTION

END PROGRAM
