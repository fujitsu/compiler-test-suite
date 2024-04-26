MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: arr(5)
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE
TYPE(t2) :: ob_2
ob_2%tt_1%arr = 0
ob_2%tt_1%arr(1) = 3

ASSOCIATE(b => ob_2%tt_1%arr)
  b(b(1)) = 1
END ASSOCIATE

IF(ob_2%tt_1%arr(3) == 1) THEN
  ob_2%tt_1%arr = 0
ELSE
  ob_2%tt_1%arr = 1
END IF

IF(ALL(ob_2%tt_1%arr == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
