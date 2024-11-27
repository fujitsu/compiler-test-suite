module m
integer ::a(5),b(5)=(/1,2,3,4,5/)
contains
elemental function n(n1,nd1,nd2,nd3,nd4,nn)
intent(in)::n1,nn
integer,intent(in),optional::nd1,nd2,nd3,nd4
n=n1*nn
end function
end 
use m
integer:: nx(-5:5)=(/(kx,kx=-5,5)/)
pointer(p,k(1))
p=loc(a(3))
a=b
forall (i=1:5)
a(i)=a(i)+nx(sum((/(ix,ix=3,k(1))/)))
end forall
if (any(a/=(/4,5,6,7,8/)))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=nx(sum((/(ix,ix=3,k(1))/)))+a(i)
end forall
if (any(a/=(/4,5,6,7,8/)))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=nx(sum((/(ix,ix=3,k(1))/)))
end forall
if (any(a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=-nx(sum((/(ix,ix=3,k(1))/)))
end forall
if (any(-a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=n(1,nn=-sum((/(ix,ix=3,k(1))/)))+a(i)-a(i)
end forall
if (any(-a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=a(i)-a(i)-nx(sum((/(ix,ix=3,k(1))/)))
end forall
if (any(-a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=a(i)*2-2*a(i)+a(i)-a(i)-nx(sum((/(ix,ix=3,k(1))/)))
end forall
if (any(-a/=3))write(6,*) "NG"
print *,'pass'
end
