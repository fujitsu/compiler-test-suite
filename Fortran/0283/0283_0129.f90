PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(1:10) :: arr = (/-1,2,5,-2,2,4,-1,2,6,-2/)
INTEGER ::i  = 0

ASSOCIATE(bb => arr)
  FORALL(i = 1:10,bb(i) > 0 )
    WHERE(bb .EQ. 2 )
      bb = 1
    ELSEWHERE
      bb = 0 
    END WHERE
   END FORALL
END ASSOCIATE

IF(ALL(arr(2:8:3) .EQ. 1)) THEN
  arr = 0
ELSE
  arr = 1
END IF

IF(ALL(arr(:) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
