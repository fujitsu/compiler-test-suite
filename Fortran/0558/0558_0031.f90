MODULE mod1
IMPLICIT NONE
REAL :: num1 = 5.0

INTERFACE
subroutine msub(dd1,dd2)
  Logical,intent(out) ::dd1
  REAL,intent(in) :: dd2
END subroutine
END INTERFACE

procedure(mfun),private,pointer::ptr
PROCEDURE(msub),private :: npsub
INTERFACE assignment (=) 
  PROCEDURE :: ptr
  PROCEDURE :: npsub
END INTERFACE

CONTAINS
subroutine mfun(dd1,dd2)
  real,intent(out) :: dd1
  Logical,Intent(in) ::dd2
  Logical ::dd
  dd1 = 2.0
  dd = dd2
  print*,dd 
END subroutine
subroutine sub()
ptr=>mfun
end subroutine
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
real  :: xx = 3.2

Logical t 
call sub()
t = xx
if(t)then
 print*,'PASS'
else
 print*,'FAIL'
endif
END PROGRAM

subroutine npsub(dd1,dd2)
use mod1
  Logical,Intent(out) ::dd1
  real,intent(in) :: dd2
  if(dd2 .EQ. 3.2)then
  dd1 = .TRUE.
  else
  dd1 = .FALSE.
  endif
END subroutine

