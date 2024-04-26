PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3,3) :: arr = 0
INTEGER :: i = 0,j = 0

ASSOCIATE(bb => j)
  DO i = 1,3
    DO bb = 1,3  
      IF(i .EQ. bb) arr(i,bb) = 1
    END DO
  END DO
END ASSOCIATE

IF(arr(1,1) .EQ. 1) THEN
  arr = 0
ELSE
  arr = 1
END IF

IF(ALL(arr(1:3,1:3) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
