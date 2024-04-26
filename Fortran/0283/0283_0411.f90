MODULE mod1
IMPLICIT NONE

TYPE t1
  COMPLEX(KIND = 4) :: cmp1
END TYPE

TYPE t2
  TYPE(t1) :: tt_1(3,3)
END TYPE

TYPE t3
  TYPE(t2) :: tt_2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

COMPLEX(KIND = 4) :: res
REAL(KIND = 4) :: rr
TYPE(t3),ALLOCATABLE :: obj
ALLOCATE(obj)
obj%tt_2%tt_1%cmp1 = (12.30,13.45)

ASSOCIATE(aa => obj%tt_2%tt_1(1,1)%cmp1 + fun((11.90,-12.30),(21.20,11.20),(-34.20,45.10)))
  res = CONJG(aa)
  rr = SIGN(AIMAG(res),AIMAG(aa))
  IF(INT(rr) .EQ. 57) PRINT*,'pass'
END ASSOCIATE

CONTAINS

FUNCTION fun(dd1,dd2,dd3)
IMPLICIT NONE
COMPLEX(KIND = 4) :: dd1,dd2,dd3,fun
fun = dd1 + dd2 + dd3
END FUNCTION 

END PROGRAM
