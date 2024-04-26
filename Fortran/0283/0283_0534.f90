MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: rr = 10.0,var = 30.0
TYPE(t1) :: obj
obj%r1 = 20.0

ASSOCIATE(aa => var , bb => fun_1(rr,obj))
  CALL sub(aa)
  IF(bb .GT. aa) THEN
    aa = 1.0
  ELSEIF(bb .LT. aa) THEN
    aa = 0.0
  ELSE
    aa = -1.0
  END IF
END ASSOCIATE

IF(var .EQ. 1.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(dd)
REAL :: dd
dd = dd - 10.0
END SUBROUTINE

REAL FUNCTION fun_1(d1,d2)
REAL :: d1
TYPE(t1) :: d2
fun_1 = d1 + d2%r1 
END FUNCTION

END PROGRAM
