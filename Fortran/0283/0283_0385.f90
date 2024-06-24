MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER(KIND = 4) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER(KIND = 4) :: r2
END TYPE

INTERFACE
FUNCTION fun_2(d1,d2,d3,d4)
IMPLICIT NONE
INTEGER(KIND = 4) :: d1,d2,d3,d4,fun_2
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER(KIND = 4),PARAMETER :: xx = 11
TYPE(t2),ALLOCATABLE :: res
TYPE(t2) :: obj1
CLASS(*),POINTER :: ptr
CLASS(t2),POINTER :: ptr2
CLASS(t2),ALLOCATABLE :: allc
ALLOCATE(allc,res,ptr2)

ptr2%r2 = 4

ALLOCATE(ptr , SOURCE = ptr2)

allc%r2 = 3
obj1%r1 = 2
res = fun(allc,ptr)

IF(res%r2 .EQ. 40) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF 

CONTAINS

FUNCTION fun(dd1,dd2)
IMPLICIT NONE
CLASS(*),POINTER :: dd2
CLASS(t2),ALLOCATABLE :: dd1,fun
ALLOCATE(fun)
SELECT TYPE(dd2)
TYPE IS(t2)
  ASSOCIATE(aa => (dd1%r2 * dd2%r2) + (obj1%r1 * xx) + fun_2(dd1%r2,dd2%r2,obj1%r1,xx))
    SELECT CASE(aa)
      CASE (40)
        fun%r2 = aa
    END SELECT
  END ASSOCIATE
END SELECT
END FUNCTION

END PROGRAM

FUNCTION fun_2(d1,d2,d3,d4)
IMPLICIT NONE
INTEGER(KIND = 4) :: d1,d2,d3,d4,fun_2
fun_2 = (d3 + d4) - (d1 + d2)
END FUNCTION