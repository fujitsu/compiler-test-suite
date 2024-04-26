MODULE mod1

TYPE t1
  INTEGER :: arr(10),n1
END TYPE

TYPE t2
  INTEGER :: n2
  TYPE(t1) :: tt_1(3)
END TYPE

TYPE t3
  INTEGER :: n3
  TYPE(t2) :: tt_2(5)
END TYPE

END MODULE

PROGRAM main

USE mod1
TYPE(t3) :: ob_3
TYPE(t2) :: ob_2
TYPE(t1) :: ob_1
ob_3%tt_2(4)%tt_1(2)%arr = 0
ob_3%n3 = 4
ob_2%n2 = 2
ob_1%n1 = 1

ASSOCIATE(b => ob_3%tt_2(ob_3%n3)%tt_1(ob_2%n2)%arr((ob_1%n1*ob_2%n2) : (ob_3%n3*ob_2%n2)))
  b(ob_3%n3 : (ob_3%n3 + ob_2%n2)) = 1
END ASSOCIATE

IF(ALL(ob_3%tt_2(4)%tt_1(2)%arr(5:7) == 1)) THEN
  ob_3%tt_2(4)%tt_1(2)%arr(5:7) = 0
ELSE
  ob_3%tt_2(4)%tt_1(2)%arr(5:7) = 1
END IF

IF(ALL(ob_3%tt_2(4)%tt_1(2)%arr(1:10) == 0)) THEN
  PRINT*,'pass'
ELSE
PRINT*,101
END IF

END PROGRAM
