function f1(a,i,b) result(x)
integer a(:),b(:)
integer x(size(a))
entry    f2(b,a,i) result(x)
x=b(1)+i
end function
interface 
function f1(a,i,b) result(x)
integer a(:),b(:)
integer x(size(a))
end function
function f2(b,a,i) result(x)
integer a(:),b(:)
integer x(size(a))
end function
end interface
integer,pointer:: a(:),b(:)
allocate(a(10000),b(1))
a(1)=10
b=20
if (size(f1(a,1,b))/=10000)print *,'error-1'
if (any(f1(a,1,b)/=21))print *,'error-2'
if (size(f2(a,b,1))/=1)print *,'error-3'
if (any(f2(a,b,1)/=11))print *,'error-4'
print *,'pass'
end
