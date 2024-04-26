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
TYPE(t1) :: arr(10)
TYPE(t2) :: ob_2
TYPE(t3) :: tt_3
ob_2%tt_1%i = 5
arr%i = 0
tt_3%tt_2%tt_1%i = 2

ASSOCIATE(b => arr( : : tt_3%tt_2%tt_1%i))
  b(tt_3%tt_2%tt_1%i : ob_2%tt_1%i)%i = 1
END ASSOCIATE

IF(ALL(arr(3:9:2)%i == 1)) THEN
  arr(3:9:2)%i = 0
ELSE
  arr(3:9:2)%i = 1
END IF

IF(ALL(arr(1:10)%i == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
