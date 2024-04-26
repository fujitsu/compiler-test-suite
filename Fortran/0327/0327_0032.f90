module def
type ydef
sequence
integer yy
end type
end module

use def
type(ydef)::y(10)
y%yy=10
call sub(y(1),y(6))
call sub(y(1),y(6),y(10))
if (y(5)%yy==50 .and. y(9)%yy==100 .and. y(10)%yy==200) then
  print *,'pass'
else
  print *,'ng',y%yy
end if
contains

subroutine sub(a,b,c)
use def
type(ydef)::a(8),b(4)
type(ydef),optional::c(1)
if(present(c)) then
  c(1)%yy=200
end if
a(5)%yy=50
b(4)%yy=100
end subroutine
end
