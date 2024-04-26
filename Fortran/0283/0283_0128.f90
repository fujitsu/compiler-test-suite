MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

TYPE(t1) :: obj1
TYPE(t2) :: obj2

obj1%rr = 2.0
obj2%tt_1%rr = 5.0

ASSOCIATE(bb => obj2)
  IF(obj1%rr .EQ. bb%tt_1%rr) THEN
    PRINT*,101
  ELSE IF((obj1%rr + 3.0) .EQ. bb%tt_1%rr) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
