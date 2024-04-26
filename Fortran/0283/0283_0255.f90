MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: i
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(2)
END TYPE

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE
TYPE(t2) :: ob_2
ob_2%tt_1(1)%i = 1
ob_2%tt_1(2)%i = 2

ASSOCIATE(b => ob_2%tt_1)
  b(b(1)%i:b(2)%i)%i = 1
END ASSOCIATE

IF(ALL(ob_2%tt_1%i == 1)) THEN
  ob_2%tt_1%i = 0
ELSE
  ob_2%tt_1%i = 1
END IF

IF(ALL(ob_2%tt_1%i == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
