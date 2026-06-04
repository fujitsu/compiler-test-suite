module m1
type xx
 integer,pointer:: w
end type
type x
 integer y
 type(xx),pointer::yy
end type
contains
subroutine s0(z)
type(x),pointer,intent(out)::z
allocate(z)
allocate(z%yy)
end subroutine
subroutine s1(z)
type(x),pointer,intent(in)::z
allocate(z%yy)
end subroutine
subroutine s2(z)
type(x),pointer,intent(in)::z
allocate(z%yy%w)
end subroutine
subroutine s3(z)
type(x),pointer,intent(in)::z
z%yy%w=1
z%y=1
end subroutine
end
use m1
type(x),pointer::z
call s0(z)
call s1(z)
call s2(z)
call s3(z)
if (z%yy%w/=1)print *,'fail'
print *,'pass'
end
