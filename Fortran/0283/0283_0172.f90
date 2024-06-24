PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(1:5) :: ar

ASSOCIATE(aa => (/1,-2,3,-4,5/))
  WHERE(aa .GT. 0)  
    ar = 0
  ELSEWHERE
    ar = 1
  END WHERE
END ASSOCIATE

IF(ALL(ar(2:5:2) .EQ. 1)) THEN
  ar = 0
ELSE
  ar = 1
END IF

IF(ALL(ar(1:5) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM