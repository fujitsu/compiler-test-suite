module m1
contains
function f1() result(x)
integer x(5,3)
x=reshape((/(i,i=1,15)/),(/5,3/))
end function
end
use m1
integer x(5,3)
x=f1()
if (any(x/=reshape((/(i,i=1,15)/),(/5,3/))))print *,'error-2'
print *,'pass'
end
