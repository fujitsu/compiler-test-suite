MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr1
END TYPE

TYPE t2 
  REAL :: rr2
  TYPE(t1) :: tt_1(3,5)
END TYPE

END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

TYPE(t1) :: obj1
TYPE(t2) :: obj2

obj1%rr1 = 5.0
obj2%rr2 = 2.0
obj2%tt_1(3,3)%rr1 = 3.0

ASSOCIATE(aa => obj1%rr1 , bb => obj2%rr2 , cc => obj2%tt_1(3,3)%rr1)
  aa = aa + bb + cc
END ASSOCIATE

IF(obj1%rr1 .EQ. 10.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
