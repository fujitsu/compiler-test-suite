module p
type x
 integer xx
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
type(x) ::a(5),b(5)=(/x(1),x(2),x(3),x(4),x(5)/)
a=b
forall (i=1:4)
a(i)%xx=a(i)%xx+a(i+1)%xx-a(i)%xx
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)%xx=+a(i+1)%xx-a(i)%xx+a(i)%xx
end forall
if (any(a/=(/2,3,4,5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)%xx=-a(i+1)%xx-a(i)%xx+a(i)%xx
end forall
if (any(a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i)%xx=-a(i)%xx+a(i)%xx-a(i+1)%xx
end forall
if (any(a/=(/-2,-3,-4,-5,5/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+1)%xx=a(i+1)%xx-a(i+1)%xx-a(i)%xx
end forall
if (any(a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+1)%xx=a(i+1)%xx-a(i+1)%xx+a(i+1)%xx-a(i+1)%xx-a(i)%xx
end forall
if (any(a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
a=b
forall (i=1:4)
a(i+1)%xx=-a(i)%xx+a(i+1)%xx-a(i+1)%xx+a(i+1)%xx-a(i+1)%xx
end forall
if (any(a/=(/1,-1,-2,-3,-4/)))write(6,*) "NG"
print *,'pass'
end
