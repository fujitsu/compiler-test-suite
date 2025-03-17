module mod
contains
function ifun(xxx) result(ians)
integer :: xxx(:)
integer :: ians(size(xxx))
ians=1
end function
function kfun(xxx) result(ians)
integer :: xxx
integer :: ians(xxx)
ians=1
end function
end
use mod
integer a(-1:+1)
if (any(ifun(a)/=1))write(6,*) "NG"
if (any(ubound(ifun(a))/=3))write(6,*) "NG"
if (any(lbound(ifun(a))/=1))write(6,*) "NG"
if (any(shape (ifun(a))/=3))write(6,*) "NG"
if (   (size  (ifun(a))/=3))write(6,*) "NG"
if (any(kfun(3)/=1))write(6,*) "NG"
if (any(ubound(kfun(3))/=3))write(6,*) "NG"
if (any(lbound(kfun(3))/=1))write(6,*) "NG"
if (any(shape (kfun(3))/=3))write(6,*) "NG"
if (   (size  (kfun(3))/=3))write(6,*) "NG"
print *,'pass'
end
