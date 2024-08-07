MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER(KIND = 2) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER(KIND = 2) :: r2
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(*),ALLOCATABLE :: aa1
CLASS(t2),ALLOCATABLE :: aa2
TYPE(t2 ) :: res

ALLOCATE(aa2)

aa2%r2 = 2

ALLOCATE(t2 :: aa1)

res = fun(aa1,aa2)

IF(res%r2 .EQ. 5) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(d1,d2)
IMPLICIT NONE
CLASS(*),ALLOCATABLE :: d1
CLASS(t2),ALLOCATABLE :: d2,fun
ALLOCATE(fun)
SELECT TYPE(d1)
TYPE IS(t2)
  d1%r2 = 3
  ASSOCIATE(aa => d1%r2 + d2%r2)
    fun%r2 = aa
  END ASSOCIATE
END SELECT
END FUNCTION

END PROGRAM
