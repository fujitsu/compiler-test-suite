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
elemental function m(mm)
intent(in)::mm
m=mm
end function
end
use p
type(y) ::ax(5),bx(5),cx(5)
type(x) ::b(5)=(/(x(1)),(x(2)),(x(3)),(x(4)),(x(5))/)
do n=1,5
ax(n)%a=b
bx(n)%a=b
cx(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=ax(n)%a(i)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i)%xx
bx(n)%a(i)%xx=bx(n)%a(i)%xx+bx(n)%a(i+1)%xx-bx(n)%a(i)%xx
cx(n)%a(i)%xx=cx(n)%a(i)%xx+cx(n)%a(i+1)%xx-cx(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
if (any(bx(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
if (any(cx(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
ax(n)%a=b
bx(n)%a=b
cx(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=+ax(n)%a(i+1)%xx-ax(n)%a(i)%xx+ax(n)%a(i)%xx
bx(n)%a(i)%xx=+bx(n)%a(i+1)%xx-bx(n)%a(i)%xx+bx(n)%a(i)%xx
cx(n)%a(i)%xx=+cx(n)%a(i+1)%xx-cx(n)%a(i)%xx+cx(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
if (any(bx(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
if (any(cx(n)%a/=(/2,3,4,5,5/)))write(6,*) "NG"
ax(n)%a=b
bx(n)%a=b
cx(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=-ax(n)%a(i+1)%xx-ax(n)%a(i)%xx+ax(n)%a(i)%xx
bx(n)%a(i)%xx=-bx(n)%a(i+1)%xx-bx(n)%a(i)%xx+bx(n)%a(i)%xx
cx(n)%a(i)%xx=-cx(n)%a(i+1)%xx-cx(n)%a(i)%xx+cx(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
if (any(bx(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
if (any(cx(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
ax(n)%a=b
bx(n)%a=b
cx(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i)%xx=-ax(n)%a(i)%xx+ax(n)%a(i)%xx-ax(n)%a(i+1)%xx
bx(n)%a(i)%xx=-bx(n)%a(i)%xx+bx(n)%a(i)%xx-bx(n)%a(i+1)%xx
cx(n)%a(i)%xx=-cx(n)%a(i)%xx+cx(n)%a(i)%xx-cx(n)%a(i+1)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
if (any(bx(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
if (any(cx(n)%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
ax(n)%a=b
bx(n)%a=b
cx(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i+1)%xx=ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx-ax(n)%a(i)%xx
bx(n)%a(i+1)%xx=bx(n)%a(i+1)%xx-bx(n)%a(i+1)%xx-bx(n)%a(i)%xx
cx(n)%a(i+1)%xx=cx(n)%a(i+1)%xx-cx(n)%a(i+1)%xx-cx(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
if (any(bx(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
if (any(cx(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
ax(n)%a=b
bx(n)%a=b
cx(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i+1)%xx=ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx-ax(n)%a(i)%xx
bx(n)%a(i+1)%xx=bx(n)%a(i+1)%xx-bx(n)%a(i+1)%xx+bx(n)%a(i+1)%xx-bx(n)%a(i+1)%xx-bx(n)%a(i)%xx
cx(n)%a(i+1)%xx=cx(n)%a(i+1)%xx-cx(n)%a(i+1)%xx+cx(n)%a(i+1)%xx-cx(n)%a(i+1)%xx-cx(n)%a(i)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
if (any(bx(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
if (any(cx(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
ax(n)%a=b
bx(n)%a=b
cx(n)%a=b
end do
forall (i=1:4,n=1:5)
ax(n)%a(i+1)%xx=-ax(n)%a(i)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx+ax(n)%a(i+1)%xx-ax(n)%a(i+1)%xx
bx(n)%a(i+1)%xx=-bx(n)%a(i)%xx+bx(n)%a(i+1)%xx-bx(n)%a(i+1)%xx+bx(n)%a(i+1)%xx-bx(n)%a(i+1)%xx
cx(n)%a(i+1)%xx=-cx(n)%a(i)%xx+cx(n)%a(i+1)%xx-cx(n)%a(i+1)%xx+cx(n)%a(i+1)%xx-cx(n)%a(i+1)%xx
end forall
do n=1,5
if (any(ax(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
if (any(bx(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
if (any(cx(n)%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
end do
print *,'pass'
end
