PROGRAM main
IMPLICIT NONE

REAL,DIMENSION(10) :: arr = (/1.0,3.0,4.0,-1.0,5.0,3.0,2.0,-4.0,3.0,6.0 /)

ASSOCIATE(bb => arr)
  WHERE(bb .EQ. 1.1)
    bb = 0.0  
  ELSEWHERE(bb .EQ. 3.0) 
    bb = 1.1
  ELSEWHERE
    bb = -1.1
  END WHERE
END ASSOCIATE

IF(arr(2) .EQ. 1.1) THEN
 arr = 0.0
ELSE 
 arr = 1.0
END IF

IF(ALL(arr(1:10) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
