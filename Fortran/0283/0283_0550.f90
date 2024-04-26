MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr
END TYPE

INTERFACE 
REAL FUNCTION fun_1(d1,d2,d3)
REAL :: d1,d2,d3
END FUNCTION
END INTERFACE

CONTAINS

SUBROUTINE sub_1(dd1)
REAL :: dd1
ASSOCIATE(aa => dd1)
  aa = aa * 4.0
END ASSOCIATE
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: xx = 5.0,yy = 2.0 , zz = 3.0 , vv = 0.0
TYPE(t1) :: obj

CALL sub_1(xx)
vv = fun_1(xx,yy,zz)

ASSOCIATE(asc => obj)
  asc%rr = vv
END ASSOCIATE

IF(obj%rr .EQ. 43.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM

REAL FUNCTION fun_1(d1,d2,d3)
REAL :: d1,d2,d3
ASSOCIATE(bb => d1,cc => d2,dd => d3)
  fun_1 = (bb*cc) + dd
END ASSOCIATE
END FUNCTION
