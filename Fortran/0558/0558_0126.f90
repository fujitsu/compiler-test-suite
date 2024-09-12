MODULE mod1
IMPLICIT NONE

INTERFACE
function rsub(dd2)
  REAL,intent(in) :: dd2
  integer ::rsub
END function
function irsub(dd1,dd2)
  REAL,intent(in) :: dd1
  integer,intent(in) :: dd2
  integer ::irsub
END function
END INTERFACE

procedure(rsub),private,pointer :: pprc

INTERFACE gnr
  PROCEDURE pprc
END INTERFACE

contains
subroutine sub()
pprc =>rsub
end subroutine
END MODULE


module mod2
use mod1

INTERFACE
function isub(dd2)
  integer,intent(in) :: dd2
  integer ::isub
END FUNCTION
END INTERFACE

procedure(isub),private,pointer :: pprc
INTERFACE gnr
  PROCEDURE pprc
END INTERFACE

contains
subroutine sub_mod2()
pprc =>isub
end subroutine

end module

PROGRAM main
USE mod2
IMPLICIT NONE
integer :: yy = 6,res
real  :: xx = 3.2

call sub()
call sub_mod2()

res = gnr(yy)
if(res .EQ. 12)then
res = gnr(xx)
else
print*,'FAIL'
endif
if(res .EQ. 6)then
print*,'PASS'
else
print*,'FAIL'
end if

END PROGRAM

function irsub(dd1,dd2)
  REAL,intent(in) :: dd1
  integer,intent(in) :: dd2
  integer ::irsub
  print*,"call irsub"
  irsub = dd1 * dd2
END function

function isub(dd2)
  integer,intent(in) :: dd2
  integer isub
  isub = dd2 * 2
END function

function rsub(dd2)
  real,intent(in) :: dd2
  integer :: rsub
  rsub = dd2 * 2.0
END function

