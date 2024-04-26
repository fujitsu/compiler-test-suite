PROGRAM main
IMPLICIT NONE

REAL :: rr = 10.0
INTEGER :: i = 0,n = 0

ASSOCIATE(aa => rr)
  IF(aa + 10.0) 10,20,20
  10 aa = aa - 10.0
  20 aa = aa + 10.0
  DO i = 1,aa,3
    n = n + i
  END DO
  IF(aa .EQ. 20.0) aa = 0.0
END ASSOCIATE

IF(rr .EQ. 0.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
