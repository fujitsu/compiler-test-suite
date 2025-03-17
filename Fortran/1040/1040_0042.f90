module m1
contains
function f1() result(x)
integer x(5,3)
x=reshape((/(i,i=1,15)/),(/5,3/))
end function
function f2(j) result(x)
integer x(j,3)
x=reshape((/(i,i=1,15)/),(/5,3/))
end function
end
use m1
if (size(f1())/=15)print *,'error-1'
if (any(f1()/=reshape((/(i,i=1,15)/),(/5,3/))))print *,'error-2'
if (size(f2(5))/=15)print *,'error-1'
if (any(f2(5)/=reshape((/(i,i=1,15)/),(/5,3/))))print *,'error-2'
print *,'pass'
end
