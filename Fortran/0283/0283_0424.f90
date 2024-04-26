MODULE mod1
IMPLICIT NONE

REAL,DIMENSION(3:12) :: arr = 0.0,arm = 0.0

CONTAINS

FUNCTION fun_m(drr)
REAL,DIMENSION(3:12) :: fun_m,drr
drr = (/-1.0,1.0,-1.0,1.0,-1.0,1.0,-1.0,1.0,-1.0,1.0/)
fun_m = drr
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

ASSOCIATE(aa => fun_m(arr))
  WHERE(aa .LT. 0.0 .or. aa .eq. 0.0)
    arm = 0.0
  ELSEWHERE
    arm = 1.1
  END WHERE
END ASSOCIATE

IF(ALL(arm(3:12:2) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
