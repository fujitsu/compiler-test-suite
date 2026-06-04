MODULE mod1
IMPLICIT NONE
REAL :: num

INTERFACE
subroutine msub(dd1,dd2)
  Logical,intent(out) ::dd1
  REAL,intent(in) :: dd2
END subroutine
END INTERFACE

procedure(msub),private,pointer :: pprc
INTERFACE assignment(=) 
  PROCEDURE pprc,mfun
END INTERFACE

contains
subroutine sub()
pprc =>msub
end subroutine

subroutine mfun(dd1,dd2)
  real,intent(out) :: dd1
  Logical,Intent(in) ::dd2
  Logical ::dd
  dd1 = 2.0
  dd = dd2
  print*,dd 
END subroutine
END MODULE

MODULE mod2
use mod1
END MODULE

MODULE mod3
use mod2,only:sub
END MODULE

MODULE mod4
use mod2,only:assignment(=)
END MODULE

MODULE mod5
use mod3,only:sub
use mod4,only:assignment(=)
END MODULE

PROGRAM main
USE mod5
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

subroutine msub(dd1,dd2)
use mod2
  Logical,Intent(out) ::dd1
  real,intent(in) :: dd2
  if(dd2 .EQ. 3.2)then
  dd1 = .TRUE.
  else
  dd1 = .FALSE.
  endif
END subroutine
