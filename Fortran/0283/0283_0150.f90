MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: i
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: i = 0,n = 0
TYPE(t1) :: obj

ASSOCIATE(aa => obj)
  CALL sub(aa)
  DO i = 1,aa%i
    n = n + i
  END DO
  IF(aa%i .EQ. 10) n = 0  
END ASSOCIATE

IF(obj%i .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

SUBROUTINE sub(ob1)
TYPE(t1) :: ob1
ob1%i = 10
END SUBROUTINE

END PROGRAM
