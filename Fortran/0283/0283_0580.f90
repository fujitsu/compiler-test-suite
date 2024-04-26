MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: r1 = 0
END TYPE

TYPE,EXTENDS(t1) :: t2
  INTEGER,DIMENSION(10) :: arr1
  CHARACTER(LEN = 10),DIMENSION(2) :: ch
  REAL :: arn = 0.0
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res = 0
TYPE(t2),ALLOCATABLE :: obj
CLASS(t2),ALLOCATABLE :: acc

ALLOCATE(obj,acc)
obj%arr1 = 12
acc%ch(1) = 'aaaaaaaaa'
obj%arn = 12.30

ASSOCIATE(aa => obj%arr1 * 3)
  SELECT CASE(aa(5))
    CASE(36)
    ASSOCIATE(bb => fun_1(acc,'xxxx'))
      IF(bb%ch(1)(3:4) .EQ. 'ax') THEN
      ASSOCIATE(dd => CEILING(obj%arn))
        DO WHILE(res .LT. dd)
          res = res + 2 
        END DO
      END ASSOCIATE
        res = 1
      ELSE
        res = 0
      END IF
    END ASSOCIATE
  END SELECT
END ASSOCIATE

IF(res .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun_1(dd1,dd2)
IMPLICIT NONE
CLASS(t2),ALLOCATABLE :: dd1,fun_1
CHARACTER(LEN = 4) :: dd2
ALLOCATE(fun_1)
dd1%ch(1)(4:7) = dd2
fun_1%ch(1) = dd1%ch(1)
END FUNCTION

END PROGRAM
