module def
type ydef
sequence
real yy
end type
end module

use def
type(ydef)::y(10)
y%yy=10
call sub(y(1),y(6))
write(1,*) y%yy
print *,'pass'
end

subroutine sub(a,b)
use def
type(ydef)::a(10),b(5)
a(6)%yy=50
b(1)%yy=100
end
