module m
integer ::a(5),b(5)=(/1,2,3,4,5/)
end 
module mm
use m,k=>a
end 
use mm
use m
a=b
forall (i=1:5)
a(i)=a(i)+k(3)
end forall
if (any(a/=(/4,5,6,7,8/)))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=k(3)+a(i)
end forall
if (any(a/=(/4,5,6,7,8/)))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=k(3)
end forall
if (any(a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=-k(3)
end forall
if (any(-a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=-k(3)+a(i)-a(i)
end forall
if (any(-a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=a(i)-a(i)-k(3)
end forall
if (any(-a/=3))write(6,*) "NG"
a=b
forall (i=1:5)
a(i)=a(i)*2-2*a(i)+a(i)-a(i)-k(3)
end forall
if (any(-a/=3))write(6,*) "NG"
print *,'pass'
end
