PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3,3) :: arr = 0
INTEGER :: n = 3,i = 0,j = 0,k = 0

ASSOCIATE(aa => n)
  DO i = 1,aa
    DO j = 1,aa
      k = k  + 1
      arr(i,j) = k
    END DO
  END DO 
  CALL sub(aa)
  IF(aa .LT. 0) THEN
    arr = -1
  ELSE IF(aa .EQ. 0) THEN
    arr = 0
  ELSE 
    arr = 1
  END IF
END ASSOCIATE

IF(ALL(arr(1:3,1:3) .EQ. 1)) THEN
  arr = 0
ELSE
  arr = 1
END IF

IF(ALL(arr(1:3,1:3) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(nn)
INTEGER :: nn
nn = nn/3
END SUBROUTINE

END PROGRAM
