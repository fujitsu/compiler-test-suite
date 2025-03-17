module m1
contains
function f1(a,y) result(x)
integer a(:)
integer,allocatable::y(:,:)
integer x(size(a))
x=a
if (any(lbound(y)/=(/-2,2/)))write(6,*) "NG"
if (any(y/=reshape((/11,12,13,14,15,16/),(/2,3/))))write(6,*) "NG"
end function
function f2(y) result(x)
integer x(3)
integer,allocatable::y(:,:)
x=10
if (any(lbound(y)/=(/-2,2/)))write(6,*) "NG"
if (any(y/=reshape((/11,12,13,14,15,16/),(/2,3/))))write(6,*) "NG"
end function
end
use m1
integer b(2)
integer,allocatable::y(:,:)
b=20
allocate(y(-2:-1,2:4))
y=reshape((/11,12,13,14,15,16/),(/2,3/))
if (size(f1(b,y))/=2)print *,'error-1'
if (any(f1(b,y)/=20))print *,'error-2'
if (size(f2(y))/=3)print *,'error-3'
if (any(f2(y)/=10))print *,'error-4'
print *,'pass'
end
