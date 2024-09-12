MODULE mod1
IMPLICIT NONE
type :: tt
 integer ::cc
end type

type(tt) :: obj
REAL :: num

INTERFACE
SUBROUTINE msub(dd1,dd2)
  import tt
  type(tt),intent(out) :: dd1
  REAL,intent(in) :: dd2
END SUBROUTINE
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(msub) :: prc

INTERFACE assignment(=)
  PROCEDURE prc
END INTERFACE assignment(=)

num = 14.0
obj=num

IF(obj%cc .EQ. 28.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

SUBROUTINE prc(dd1,dd2)
 use mod1
  type(tt),intent(out) :: dd1
  real,intent(in) :: dd2
  dd1%cc = dd2 * 2.0
END SUBROUTINE
