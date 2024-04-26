module def
type ydef
sequence
integer yy
end type
end module

use def
type(ydef)::y(10)
integer :: n1,n2
y%yy=10
read *,n1,n2
call sub(y(n1),y(n2))
if (y(5)%yy==50 .and. y(6)%yy==100 ) then
  print *,'pass'
else
  print *,'ng',y%yy
end if
contains

subroutine sub(a,b)
use def
type(ydef)::a(10),b(5)
b(1)%yy=50
a(6)%yy=100
end subroutine
end
