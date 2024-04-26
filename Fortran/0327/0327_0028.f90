module def
type ydef
sequence
complex yy
end type
end module

use def
type(ydef)::y(10)
y%yy=(10,10)
call sub(y(1),y(6))
if (y(5)%yy==(50,50) .and. y(10)%yy==(100,100) ) then
  print *,'pass'
else
  print *,'ng',y%yy
end if
end

subroutine sub(a,b)
use def
type(ydef)::a(9),b(5)
a(5)%yy=(50,50)
b(5)%yy=(100,100)
end
