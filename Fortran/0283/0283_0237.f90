MODULE mod1

TYPE t1
  INTEGER :: i(5)
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main

USE mod1
TYPE(t2) :: ob2
ob2%tt_1%i = 0

ASSOCIATE( b => ob2%tt_1%i )
  b(4) = 1
END ASSOCIATE

IF(ob2%tt_1%i(4) == 1) THEN
  ob2%tt_1%i(4) = 0
ELSE
  ob2%tt_1%i(4) = 1
END IF

IF(ALL(ob2%tt_1%i == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
