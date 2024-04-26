PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(10) :: arr = 0
INTEGER :: num  = 8,i

ASSOCIATE(aa => num)
  aa = aa + 2
  DO i = 2,aa,2
    arr(i) = 1
  END DO
  aa = aa/2
  arr(1:10:2) = aa
END ASSOCIATE

IF(ALL(arr(1:10:2) .EQ. 5)) THEN
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
