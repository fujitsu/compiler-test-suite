MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r1
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t2) :: obj2
obj2%tt_1%r1 = 10.0

ASSOCIATE(aa => 40.0 , bb => obj2%tt_1%r1 ,cc => fun_1(40.0))
  CALL sub(bb)
  IF(aa .EQ. cc) THEN
    bb = 1.0
  ELSE
    bb = 0.0
  END IF
END ASSOCIATE

IF(obj2%tt_1%r1 .EQ. 1.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(ob)
REAL ob
ob = ob * 2.0
END SUBROUTINE

REAL FUNCTION fun_1(ff)
REAL :: ff
fun_1 = ff
END FUNCTION

END PROGRAM
