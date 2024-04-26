MODULE mod1

TYPE t1
  INTEGER :: arr(10),i
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(2,2)
END TYPE

TYPE t3
  TYPE(t2) :: tt_2(1,3,2)
END TYPE

END MODULE

PROGRAM main

USE mod1
TYPE(t3) :: ob_3
ob_3%tt_2(1,1,1)%tt_1(1,1)%arr = 0

ASSOCIATE(b => ob_3%tt_2(1,1,1)%tt_1(1,1)%arr )
  b( : : fun()) = 1
END ASSOCIATE

IF(ALL(ob_3%tt_2(1,1,1)%tt_1(1,1)%arr(1:10:2) == 1)) THEN
  ob_3%tt_2(1,1,1)%tt_1(1,1)%arr(1:10:2) = 0
ELSE
  ob_3%tt_2(1,1,1)%tt_1(1,1)%arr(1:10:2) = 1
END IF

IF(ALL(ob_3%tt_2(1,1,1)%tt_1(1,1)%arr == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun()
  fun = 2
END FUNCTION

END PROGRAM
