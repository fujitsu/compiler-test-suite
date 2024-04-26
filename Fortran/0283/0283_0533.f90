MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL,DIMENSION(2:12) :: r1
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: xx = 5,yy = 11,i = 0
TYPE(t2) :: obj

obj%tt_1%r1 = 0.0

ASSOCIATE(aa => obj%tt_1%r1 , bb => MAX(xx,yy) )
  DO i = 2,bb,2
    aa(i) =  5.0
  END DO
  FORALL(i = 2:bb:2)
    aa(i) = -1.0
  END FORALL
  IF(ALL(aa(2:bb:2) .EQ. -1.0)) THEN
    aa(2:bb:2) = 0.0
  ELSE 
    aa(2:bb:2) = 1.0
  END IF
END ASSOCIATE

IF(ALL(obj%tt_1%r1(2:12:2) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
