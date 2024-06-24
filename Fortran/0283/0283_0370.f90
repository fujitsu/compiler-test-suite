MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER(KIND = 4) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER(KIND = 4) :: r2
END TYPE

INTERFACE
FUNCTION fun_ext()
IMPLICIT NONE
INTEGER(KIND = 4) :: fun_ext
END FUNCTION
END INTERFACE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER(KIND = 4),DIMENSION(5) :: res
CLASS(t1),POINTER :: ptr
CLASS(t2),ALLOCATABLE :: allc
TYPE(t1),DIMENSION(:),ALLOCATABLE :: obj

ALLOCATE(allc,ptr,obj(5))

allc%r2 = 240
ptr%r1 = 120
obj%r1 = 400
res = fun(obj)

IF(res(4) .EQ. 871) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
INTEGER(KIND = 4),DIMENSION(5) :: fun 
TYPE(t1),DIMENSION(:) :: dd1
ASSOCIATE(aa => allc%r2 + ptr%r1 + dd1%r1 + fun_ext())
  IF(ALL(aa(2:4) .EQ. 871)) fun = aa  
END ASSOCIATE
END FUNCTION

END PROGRAM

FUNCTION fun_ext()
IMPLICIT NONE
INTEGER(KIND = 4) :: fun_ext
fun_ext = 111
END FUNCTION