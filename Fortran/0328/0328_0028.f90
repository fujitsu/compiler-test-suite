module def
type ydef
integer yy
end type
end module def


use def
type (ydef) :: y
y%yy=0
call sub(y,y)
write(1,*) y%yy
print *,'pass'
end

subroutine sub(a,b)
use def
type (ydef) :: a,b
a%yy=50
b%yy=100
end
