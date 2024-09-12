MODULE mod1
IMPLICIT NONE
type tt
 integer :: cc
end type

INTEGER :: num

CONTAINS
SUBROUTINE msub(dd1,dd2)
  type(tt),intent(out) :: dd1
  INTEGER,intent(in) :: dd2
  dd1%cc = dd2 + 2
END SUBROUTINE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE
type(tt) :: obj

PROCEDURE(msub),POINTER :: prc
 
INTERFACE assignment(=)
  PROCEDURE :: prc
END INTERFACE assignment(=)

num = 14
prc => msub
obj=num

IF(obj%cc .EQ. 16) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM
