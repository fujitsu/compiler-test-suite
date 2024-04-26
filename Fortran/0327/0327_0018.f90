module def
type ydef
integer yy
end type
end module def

use def
type (ydef) :: x,y
x%yy=0
y%yy=0
call sub(x,y)
if ( x%yy==50 .and. y%yy==100 ) then
  print *,'pass'
else
  print *,'ng',x%yy,y%yy
end if
end

subroutine sub(a,b)
use def
type (ydef) :: a,b
a%yy=50
b%yy=100
end
