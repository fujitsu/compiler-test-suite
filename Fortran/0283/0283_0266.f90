PROGRAM main
IMPLICIT NONE

INTEGER :: i = 0
REAL,DIMENSION(:),ALLOCATABLE :: allc,allc2
ALLOCATE(allc(3:8),allc2(3:8))

allc = (/1.0,-2.0,3.0,-4.0,5.0,-6.0/)

ASSOCIATE(aa => allc)
  FORALL(i = 3:8,aa(i) .LT. 0.0)
    allc2(i) = 0.0
  END FORALL
END ASSOCIATE

IF(ALL(allc2(4:8:2) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
