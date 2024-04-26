MODULE mod1
IMPLICIT NONE

TYPE t1
  CHARACTER(LEN = 10) :: ch1 = 'aaaaaaaaaa'
END TYPE

TYPE,EXTENDS(t1) :: t2
  CHARACTER(LEN = 10),DIMENSION(3) :: ch2 = 'xxaaaaaaxx'
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res 
CLASS(t2),ALLOCATABLE :: acc2
ALLOCATE(acc2)

ASSOCIATE(aa => acc2)
  IF(aa%ch2(2)(3:8) .EQ. 'aaaaaa') THEN
    res = 1
  ELSE
    res = 0
  END IF
  ASSOCIATE(bb => aa%ch2)
    bb(1:3)(3:8) = 'xxxxxx'
    res = res + 1
  END ASSOCIATE
END ASSOCIATE

IF(res .EQ. 2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
