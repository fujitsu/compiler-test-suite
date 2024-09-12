module m1
contains
subroutine s1(x)
use ieee_arithmetic
real ,intent(in):: x
integer :: array( f( ieee_class( x ) ) )

if (size(array) /=2 ) print *,101
end subroutine
pure integer function f(d) 
use ieee_arithmetic
type(ieee_class_type),intent(in):: d
f=0
if (d==IEEE_NEGATIVE_NORMAL) f=2
end function
end
use m1
real:: x=-1
call s1(x)
print *,'pass'
end
