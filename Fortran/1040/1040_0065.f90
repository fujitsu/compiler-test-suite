function f1(a,b) result(x)
integer a(:),b(:)
integer x(size(a))
x=b(1)
end function
interface 
function f1(a,b) result(x)
integer a(:),b(:)
integer x(size(a))
end function
end interface
integer a(-1:10000),b(1),c(10002)
do ii=1,1000
a(1)=10
b=20
if (any(lbound(f1(a,b))/=1))print *,'error-1'
if (any(ubound(f1(a,b))/=10002))print *,'error-2'
if (size(f1(a,b))/=10002)print *,'error-3'
if (any(f1(a,b)/=20))print *,'error-4'
end do
print *,'pass'
end
