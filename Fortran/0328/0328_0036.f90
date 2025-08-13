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
write(14,*) y%yy
call ent(y(1),y(6))
write(14,*) y%yy
print *,'pass'
end

subroutine sub(a,b)
use def
type(ydef)::a(10),b(5)
a(6)%yy=50
b(1)%yy=100
entry ent(a,b)
a%yy=a%yy+1
end
