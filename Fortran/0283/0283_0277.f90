MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r
END TYPE

TYPE,EXTENDS(t1) :: t2
  REAL :: r2
END TYPE 

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL :: res
CLASS(t1),POINTER :: ptr
TYPE(t2),TARGET :: obj
obj%r = 10.0
ALLOCATE(ptr)
ptr%r = 5.0
res = fun(ptr,obj)

IF(res .EQ. 0.0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

REAL FUNCTION fun(d1,d2)
CLASS(t1),POINTER :: d1
TYPE(t2),TARGET :: d2
ASSOCIATE(aa => d1 , bb => d2)
  SELECT TYPE(aa)
    TYPE IS(t1)
    bb%r = bb%r + 2.0

  END SELECT
  20 IF(bb%r .GT. 0.0) THEN
     bb%r = bb%r - 2.0
     GOTO 20 
     END IF
     fun = bb%r
END ASSOCIATE
END FUNCTION

END PROGRAM
