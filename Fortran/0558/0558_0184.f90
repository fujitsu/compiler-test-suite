module m1
IMPLICIT NONE
type tt
 integer :: cc
end type
end module

MODULE mod1
use m1
type(tt) :: obj
INTEGER :: num

INTERFACE
SUBROUTINE msub(dd1,dd2)
  import tt
  type(tt),intent(out) :: dd1
  INTEGER,intent(in) :: dd2
END SUBROUTINE
END INTERFACE

CONTAINS
SUBROUTINE mod_sub(dd1)
INTEGER :: dd1
PROCEDURE(msub),POINTER :: prc
INTERFACE assignment(=)
  PROCEDURE :: prc
END INTERFACE assignment(=)
  prc => msub
  obj=dd1
  IF(obj%cc .EQ. 16) THEN
    PRINT*,"PASS"
  ELSE
    PRINT*,"ERROR"
  END IF
END SUBROUTINE 
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

num = 14
CALL mod_sub(num)

END PROGRAM

SUBROUTINE msub(dd1,dd2)
  use m1
  type(tt),intent(out) :: dd1
  INTEGER,intent(in) :: dd2
  dd1%cc = dd2 + 2
END SUBROUTINE
