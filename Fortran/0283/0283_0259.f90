MODULE mod1

TYPE t1
  INTEGER :: i(5)
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(3,3)
END TYPE

TYPE t3
  TYPE(t2) :: tt_2(4,4)
END TYPE

END MODULE

PROGRAM main

USE mod1
TYPE(t3) :: ob_3
TYPE(t2) :: ob_2
ob_3%tt_2(4,4)%tt_1(3,3)%i = 0
ob_2%tt_1(3,3)%i = 3 

ASSOCIATE(b => ob_3%tt_2(4,4)%tt_1(3,3)%i )
  b(ob_2%tt_1(3,3)%i) = 1
END ASSOCIATE

IF(ob_3%tt_2(4,4)%tt_1(3,3)%i(3) .EQ. 1) THEN
  ob_3%tt_2(4,4)%tt_1(3,3)%i(3) = 0
ELSE
  ob_3%tt_2(4,4)%tt_1(3,3)%i(3) = 1
END IF

IF(ALL(ob_3%tt_2(4,4)%tt_1(3,3)%i == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
