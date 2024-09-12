module m1
use ieee_arithmetic
implicit none
contains
subroutine s1
call sub(1.0)
end subroutine
subroutine sub(x)
real::x
integer:: a( f(ieee_support_datatype(x)) )
if (size( a )/=2) print *,301
a=[1,2]
if (any( a/=[1,2] )) print *,304
end subroutine
pure function f( y ) result(r)
integer:: r
logical,intent(in):: y
r=2
end function
end
use m1
call s1
print *,'pass'
end
