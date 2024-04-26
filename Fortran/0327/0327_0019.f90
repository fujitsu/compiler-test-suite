module def
type ydef
integer:: yy
end type
end module def

use def
type (ydef),pointer:: y
type (ydef),target :: t
y=>t
t%yy=10
call sub(y,y)
if ( y%yy==100 ) then
  print *,'pass'
else
  print *,'ng',y%yy
end if
contains

subroutine sub(a,b)
use def
type (ydef),pointer :: a,b
a%yy=50
b%yy=100
end subroutine
end
