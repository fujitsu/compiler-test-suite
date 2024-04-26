MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: rr
END TYPE

TYPE,EXTENDS(t1) :: t2
  CHARACTER(LEN = 6) :: ch2='xxxxxx'
  CHARACTER(LEN = 2) :: ch
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

REAL,DIMENSION(10) :: arr = 0.0
REAL :: x = 1.0 , y = 2.2 
TYPE(t1) :: obj
CLASS(t1),POINTER :: ptr
TYPE(t2),TARGET :: tr 
obj%rr = 0.0

ptr => tr

ASSOCIATE(aa => ptr , bb => arr , cc => fun(x,y,obj))
  SELECT TYPE(aa)
    CLASS IS(t2)
      PRINT*,101
    TYPE IS(t2)
      bb = 1.1
    CLASS DEFAULT
      PRINT*,102
   END SELECT
   CALL sub(bb)
   WHERE(bb .EQ. cc)
     bb = 1.1
   ELSEWHERE
     bb = 0.0
   END WHERE
END ASSOCIATE

IF(ALL(arr(1:10:2) .EQ. 1.1)) THEN
  arr(1:10:2) = 0.0
ELSE
  arr(1:10:2) = 1.0
END IF

IF(ALL(arr(1:10) .EQ. 0.0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(arr1)
REAL,DIMENSION(10) :: arr1
arr1(1:10:2) = 3.2 
END SUBROUTINE

REAL FUNCTION fun(xx,yy,zz)
REAL :: xx , yy
TYPE(t1) :: zz
zz%rr = xx + yy
fun = zz%rr
END FUNCTION

END PROGRAM
