module m1
type x
 integer y
end type
protected ::z
type(x)::z=x(1)
contains
subroutine s1
z%y=z%y+1
end subroutine
end
use m1
call s1
if (z%y/=2)write(6,*) "NG"
print *,'pass'
end
