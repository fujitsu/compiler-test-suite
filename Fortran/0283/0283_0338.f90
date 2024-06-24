MODULE mod1
IMPLICIT NONE

TYPE t1
  CHARACTER(LEN = 3) :: r1
END TYPE

TYPE,EXTENDS(t1) :: t2
  CHARACTER(LEN = 5) :: r2
END TYPE

END MODULE 

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: c = 0
CLASS(t2),ALLOCATABLE,TARGET :: allc

ALLOCATE(allc)
allc%r2 = 'aaaaa'

ASSOCIATE(aa => fun(allc))
  SELECT TYPE(aa)
    TYPE IS(t2)
      c = c + 1
  END SELECT
END ASSOCIATE

IF(c .EQ. 1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

FUNCTION fun(dd1)
IMPLICIT NONE
CLASS(t1),POINTER :: fun
CLASS(t2),ALLOCATABLE,TARGET :: dd1
fun => dd1
END FUNCTION

END PROGRAM