PROGRAM main
IMPLICIT NONE

INTEGER :: i = 0
REAL,DIMENSION(3:12) :: arr = 0.0

ASSOCIATE(aa => arr(5:10))
  CALL sub(aa(2:5))
  WHERE(aa .EQ. 6.0)
    aa = 1.0
  ELSEWHERE
    aa = 0.0
  END WHERE
  FORALL(i = 1:6 , aa(i) > 0.0)
    aa(i) = 1.1
  END FORALL
END ASSOCIATE

IF(ALL(arr(6:9) .EQ. 1.1)) THEN
  arr(6:9) = 0.0
ELSE
  arr(6:9) = 1.0
END IF

IF(ALL(arr(3:12) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(arr1)
REAL,DIMENSION(1:4) :: arr1
arr1 = 6.0
END SUBROUTINE

END PROGRAM
