MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: num
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t1) :: obj

ASSOCIATE(aa => obj)
  CALL sub(aa)
  IF(aa%num .EQ. 10) THEN
    aa%num = 100
  ELSE
    aa%num = 10
  END IF
  GOTO 40
  40  aa%num = aa%num/2  
END ASSOCIATE

IF(obj%num .EQ. 50) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS
SUBROUTINE sub(ob1)
TYPE(t1) :: ob1
ob1%num = 10
END SUBROUTINE

END PROGRAM
