module m1
use ieee_arithmetic
implicit none
contains
pure function f(flag) result(r)
integer::r
logical,intent(in)::flag
r=0
if (flag) r=1
end function
subroutine s1
integer::a6( f(ieee_support_datatype( 1.0) ))
if( size(a6)/=1) print *,106,size(a6)
end subroutine
end
use m1
call s1
print *,'pass'
end

