PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(10) :: arr = (/-1,1,-1,1,-1,1,-1,1,-1,1/)
INTEGER :: i = 0 

ASSOCIATE(bb => i)
  FORALL(bb = 1:10,arr(bb) > 0 )
    arr(bb) = 1
  END FORALL
END ASSOCIATE

IF(ALL(arr(2:10:2) .EQ. 1)) THEN
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
