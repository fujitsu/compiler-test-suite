module m1
contains
function f(x,k) result(r)
integer(2) x(k)
integer(2) r(sizeof(x))
r=(/1,2,3,4,5,6/)
end function
end
use m1
integer(2) x(3)
x=(/1,2,3/)
if (any(f(x,3)/=(/1,2,3,4,5,6/)))print *,"fail"
if (any(shape(f(x,3))/=6))print *,"fail"
call s(f(x,3))
print *,'pass'
end
subroutine s(x)
integer(2) x(6)
if (any(x/=(/1,2,3,4,5,6/)))print *,"fail"
end
