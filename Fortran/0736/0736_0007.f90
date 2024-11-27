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
type(y) ::ax
type(x) ::b(5)=(/(x(1)),(x(2)),(x(3)),(x(4)),(x(5))/)
ax%a=b
forall (i=1:4)
ax%a(i)%xx=ax%a(i)%xx+ax%a(i+1)%xx-ax%a(i)%xx
end forall
if (any(ax%a/=(/2,3,4,5,5/)))write(6,*) "NG"
ax%a=b
forall (i=1:4)
ax%a(i)%xx=+ax%a(i+1)%xx-ax%a(i)%xx+ax%a(i)%xx
end forall
if (any(ax%a/=(/2,3,4,5,5/)))write(6,*) "NG"
ax%a=b
forall (i=1:4)
ax%a(i)%xx=-ax%a(i+1)%xx-ax%a(i)%xx+ax%a(i)%xx
end forall
if (any(ax%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
ax%a=b
forall (i=1:4)
ax%a(i)%xx=-ax%a(i)%xx+ax%a(i)%xx-ax%a(i+1)%xx
end forall
if (any(ax%a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
ax%a=b
forall (i=1:4)
ax%a(i+1)%xx=ax%a(i+1)%xx-ax%a(i+1)%xx-ax%a(i)%xx
end forall
if (any(ax%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
ax%a=b
forall (i=1:4)
ax%a(i+1)%xx=ax%a(i+1)%xx-ax%a(i+1)%xx+ax%a(i+1)%xx-ax%a(i+1)%xx-ax%a(i)%xx
end forall
if (any(ax%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
ax%a=b
forall (i=1:4)
ax%a(i+1)%xx=-ax%a(i)%xx+ax%a(i+1)%xx-ax%a(i+1)%xx+ax%a(i+1)%xx-ax%a(i+1)%xx
end forall
if (any(ax%a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
print *,'pass'
end
