module m1
contains
function f1(a) result(x)
integer a(:)
integer x(size(a))
x=a
end function
function f2() result(x)
integer x(3)
x=10
end function
end
use m1
integer b(2)
b=20
if (size(f1(b))/=2)print *,'error-1'
if (any(f1(b)/=20))print *,'error-2'
if (size(f2())/=3)print *,'error-3'
if (any(f2()/=10))print *,'error-4'
print *,'pass'
end
