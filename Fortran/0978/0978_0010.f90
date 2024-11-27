module m1
type xx
 integer w
end type
type x
 integer y
 type(xx),pointer::yy
end type
protected ::z
type(x)::z
contains
subroutine s0
allocate(z%yy)
end subroutine
subroutine s1
z%y=z%y+1
z%yy%w=z%yy%w+1
end subroutine
end
use m1
call s0
z%yy%w=1
call s1
if (z%y/=1)write(6,*) "NG"
if (z%yy%w/=2)write(6,*) "NG"
print *,'pass'
end
