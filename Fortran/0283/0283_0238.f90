MODULE mod1

TYPE t1
  INTEGER  :: i(5)
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(2,3)
END TYPE

END MODULE

PROGRAM main

USE mod1
TYPE(t2) :: ob_2
ob_2%tt_1(1,2)%i = 0

ASSOCIATE(b => ob_2%tt_1(1,2)%i)
  b(3) = 1
END ASSOCIATE

IF(ob_2%tt_1(1,2)%i(3) == 1) THEN
  ob_2%tt_1(1,2)%i(3) = 0
ELSE
  ob_2%tt_1(1,2)%i(3) = 1
END IF

IF(ALL(ob_2%tt_1(1,2)%i == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
