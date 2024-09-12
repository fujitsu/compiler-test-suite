module m1
use ieee_arithmetic
implicit none
contains
subroutine sub(x)
real,intent(in)::x
integer:: a( f(ieee_class(x)) )
if (size( a )/=4) print *,301
a=[1,2,3,4]
if (any( a/=[1,2,3,4] )) print *,304
end subroutine
pure function f( y ) result(r)
integer:: r
type(IEEE_CLASS_TYPE),intent(in):: y
r=4
end function
end
use m1
call sub(1.0)
print *,'pass'
end
