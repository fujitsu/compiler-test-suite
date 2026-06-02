module m1
contains
function f(x) result(r)
integer x(:)
integer r(sizeof(x))
r=1
end function
end
use m1
integer x(3)
x=(/1,2,3/)
if (any(f(x)/=1))print *,"fail"
if (any(shape(f(x))/=12))print *,"fail"
call s(f(x))
print *,'pass'
end
subroutine s(x)
integer x(12)
if (any(x/=1))print *,"fail"
end
