function f1(a,b) result(x)
integer a(:),b(:)
integer x(size(a))
entry    f2(b,a) result(x)
entry    f3(a,b) result(x)
x=b(1)
end function
interface 
function f3(a,b) result(x)
integer a(:),b(:)
integer x(size(a))
end function
function f1(a,b) result(x)
integer a(:),b(:)
integer x(size(a))
end function
function f2(b,a) result(x)
integer a(:),b(:)
integer x(size(a))
end function
end interface
integer a(10000),b(1)
a(1)=10
b=20
if (size(f1(a,b))/=10000)print *,'error-1'
if (any(f1(a,b)/=20))print *,'error-2'
if (size(f2(a,b))/=1)print *,'error-3'
if (any(f2(a,b)/=10))print *,'error-4'
if (size(f3(a,b))/=10000)print *,'error-5'
if (any(f3(a,b)/=20))print *,'error-6'
print *,'pass'
end
