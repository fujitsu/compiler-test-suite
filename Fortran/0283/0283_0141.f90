PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(10) :: arr = (/-1,1,-1,1,-1,1,-1,1,-1,1/)
INTEGER :: i = 0

ASSOCIATE(aa => arr(3:8))
  FORALL(i = 1:6,aa(i) .GT. 0)
    aa(i) = 2
  END FORALL
  WHERE(aa .EQ. 2)
    aa = 3
  ELSE WHERE
    aa = 0
  END WHERE
END ASSOCIATE

IF(ALL(arr(4:8:2) .EQ. 3)) THEN
  arr = 0
ELSE
  arr = 1
END IF

IF(ALL(arr(1:10) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
