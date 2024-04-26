MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER,DIMENSION(3:12) :: arr
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: xx = 4,yy = 6,zz = 2,i = 0
TYPE(t2) :: obj2

obj2%tt_1%arr = 0

ASSOCIATE(aa => obj2%tt_1%arr , bb => fun_1(xx,yy)+2 , cc => xx+(yy*zz)-(xx*zz))
  DO i = 3,bb,2
    aa(i) = cc
  END DO
  WHERE(aa .EQ. 0)
    aa = -1
  ELSEWHERE
    aa = 1
  ENDWHERE
  IF(cc .GT.6) aa = 0
END ASSOCIATE

IF(ALL(obj2%tt_1%arr(3:12) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun_1(d1,d2)
INTEGER :: d1,d2
fun_1 = d1 + d2
END FUNCTION

END PROGRAM
