PROGRAM main
IMPLICIT NONE

INTEGER :: arr(3,3) = 0
INTEGER :: i,j

ASSOCIATE(bb => arr)
 OUTS : DO i = 1,3
  INNS :  DO j = 1,3 
      IF(i .EQ. j) CYCLE INNS 
         bb(i,j) = 1
    END DO INNS
  END DO OUTS
END ASSOCIATE

IF(arr(1,1) .EQ. 0) THEN
  arr = 0
ELSE
  arr = 1
END IF

IF(ALL(arr(1:3,1:3) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
