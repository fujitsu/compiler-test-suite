module m
real,external::fun
end module
use m
real a,b
integer::y(2)
y=1
!$omp atomic write
a = fun([1],y)
if(a/=3.0) print *,'err'
a=0
!$omp atomic capture
a = fun([1],y)+a
b=a
!$omp end atomic
if(a/=b) print *,'err'
a=0
!$omp atomic capture
b=a
a = fun(y(1),[1,1])+a
!$omp end atomic
if(a/=3.0) print *,'err'
if(b/=0.0) print *,'err'
print *,'pass'
end
real(kind=kind(1)) function fun(x,y)
integer::x(1),y(2)
!$omp atomic write
fun = sum(x)+sum(y)
end
