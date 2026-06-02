module m1
use, intrinsic :: ieee_arithmetic
contains
subroutine s1()
dimension array01( f( &
ieee_support_flag(ieee_usual(1)) &
) )
if (size(array01)/=1) print *,101
end subroutine
pure function f(n) result(r)
integer:: r
logical,intent(in):: n
r=100
if (n) r=1
end function
end
use m1
call s1
print *,'pass'
end
