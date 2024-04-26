module def
type ydef
sequence
integer yy
end type
end module

use def
type(ydef),allocatable,dimension(:)::y
call sub(y,y)
if (y(1)%yy==100 .and. y(6)%yy==50) then
  print *,'pass'
else
  print *,'ng',y%yy
end if
contains

subroutine sub(a,b)
use def
type(ydef),allocatable,dimension(:)::a,b
allocate(a(10))
a(6)%yy=50
b(1)%yy=100
end subroutine
end
