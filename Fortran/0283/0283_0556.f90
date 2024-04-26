MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: n = 1
END TYPE

TYPE,EXTENDS(t1) :: t2
  CHARACTER(LEN = 5) :: ch = 'xxxxx'
  CHARACTER(LEN = 3) :: ch1 = 'xxx'
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: fun , d1,d2 , d3 , xx =1 , yy = 2, zz = 3

fun(d1,d2,d3) = (d1*d2)+d3

CLASS(t2),ALLOCATABLE,TARGET :: acc,acc2
CLASS(t1),POINTER :: ptr
CLASS(*),POINTER :: ptr2
ALLOCATE(acc,ptr)

ptr%n = 2
acc%n = 4
acc%ch = 'aaaaa'

ptr => acc

ASSOCIATE(aa =>  (/1,3,5,7,9/) , bb => acc , cc => ptr , dd => fun(xx,yy,zz))
  ALLOCATE(acc2 , SOURCE = bb)
  ptr2 => cc
  IF(aa(3) .EQ. 5) acc2%n = acc2%n + 2
  SELECT CASE(dd)
  CASE(5)
    acc2%n = 0
  END SELECT
  IF(ASSOCIATED(ptr2)) NULLIFY(ptr2)
END ASSOCIATE

IF(acc2%n .EQ. 0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
