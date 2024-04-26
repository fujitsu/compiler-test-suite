MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL,DIMENSION(10) :: rr = 1.0
END TYPE

TYPE t2
  TYPE(t1) :: tt_1
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: r1 = 2.0 , r2 = 3.0
TYPE(t1) :: obj
TYPE(t2) :: obj2

obj%rr = 0.0

ASSOCIATE(aa => obj , bb => obj2%tt_1 , cc => fun(r1)*fun_2(r1,r2))
  CALL sub(aa,bb,cc)
END ASSOCIATE

IF(ALL(obj%rr(2:10:2) .EQ. 13.0 )) THEN
  obj%rr(2:10:2) = 0.0
ELSE
  obj%rr(2:10:2) = 1.0
END IF

IF(ALL(obj%rr(1:10) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

REAL FUNCTION fun(a)
REAL :: a
fun = a
END FUNCTION

REAL FUNCTION fun_2(a,b)
REAL :: a,b
fun_2 = a*b
END FUNCTION

SUBROUTINE sub(xx,yy,zz)
TYPE(t1) :: xx
TYPE(t1) :: yy
REAL :: zz
xx%rr(2:10:2) = yy%rr(1) + zz
END SUBROUTINE

END PROGRAM
