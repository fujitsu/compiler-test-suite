module m1
type xx
 integer w
end type
type x
 integer y
 type(xx),pointer::yy
end type
contains
subroutine s0(z)
type(x),intent(out)::z
allocate(z%yy)
end subroutine
subroutine s1(z)
type(x),intent(in)::z
z%yy%w=1
end subroutine
end
use m1
type(x)::z
call s0(z)
call s1(z)
if (z%yy%w/=1)write(6,*) "NG"
print *,'pass'
end
