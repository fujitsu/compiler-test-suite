MODULE mod1
IMPLICIT NONE

TYPE t1
  CHARACTER(LEN = 10),POINTER :: ch
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

CHARACTER(LEN = 6) :: c1
TYPE(t1) :: ptr

ALLOCATE(ptr%ch)
ptr%ch = 'xxaaxxaaxx'

ASSOCIATE(aa => ptr)
  c1(1:6) = aa%ch(3:8)
END ASSOCIATE

IF(c1(1:6) .EQ. 'aaxxaa') THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM  