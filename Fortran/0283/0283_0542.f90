MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: i = 0 
REAL,DIMENSION(3:12) :: arr = (/-1.0,1.0,-1.0,1.0,-1.0,1.0,-1.0,1.0,-1.0,1.0/)
INTEGER :: xx = 1,yy = 2
TYPE(t2) :: obj2
obj2%tt_1%rr = 10.0

ASSOCIATE(aa => obj2%tt_1%rr , bb => arr , cc => fun_1(xx,yy) , dd => fun_1(xx,yy)*fun_2(xx))
  DO WHILE(aa > 0)
    aa = aa - 1.0
  END DO
  FORALL(i = 3:12:cc,bb(i) > 0.0)
    bb(i) = 1.1
  END FORALL
  IF(dd .EQ. 7) THEN
    aa = 1.0
  ELSE
    aa = 0.0
  END IF
  IF(aa) 10,20,20
  10 bb = 0.0
  20 bb = 1.0
END ASSOCIATE

IF(ALL(arr(3:12) .EQ. 1.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF 

CONTAINS

INTEGER FUNCTION fun_1(dd1,dd2)
INTEGER :: dd1,dd2
fun_1 = dd1 + dd2
END FUNCTION

INTEGER FUNCTION fun_2(dd3)
INTEGER :: dd3
fun_2 = dd3
END FUNCTION

END PROGRAM
