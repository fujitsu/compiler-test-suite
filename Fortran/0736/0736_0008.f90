module p
type x
 integer xx
end type
type y
 type(x)::a(5)
end type
interface operator(/=)
module procedure pp
end interface
contains
elemental function pp(x1,x2)
type(x),intent(in)::x1
integer,intent(in)::x2
logical::pp
pp=x1%xx/=x2
end function
end
use p
type(y) ::ax(5)
type(x) ::b(5)=(/(x(1)),(x(2)),(x(3)),(x(4)),(x(5))/)
do n=1,5
ax(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=ax(n)%a(i)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
ax(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=+ax(n)%a(i+1)%xx-ax(n)%a(i)%xx+ax(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
ax(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=-ax(n)%a(i+1)%xx-ax(n)%a(i)%xx+ax(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
ax(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=-ax(n)%a(i)%xx+ax(n)%a(i)%xx-ax(n)%a(i+1)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
ax(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i+1)%xx=ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx-ax(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
ax(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i+1)%xx=ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx-ax(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
ax(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i+1)%xx=-ax(n)%a(i)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
end do
print *,'pass'
end
