module m1
type x
 integer::x1
 integer::x2
 integer::x3
 integer::x4
end type 
contains
subroutine s(a,k1,k2,n1,n2)
type(x)::a(k1,k2,1)
a=x(0,0,0,0)
m=1
a(n1,n2,1)=x(1,1,m,1)
end
end
use m1
parameter (k1=3,k2=2,n1=3,n2=2)
type(x),pointer,contiguous::a(:,:,:)
integer::aa(6)
allocate(a(k1,k2,1))
call       s(a,k1,k2,n1,n2)
if (a(3,2,1)%x1/=1) print *,203
if (a(3,2,1)%x2/=1) print *,203
if (a(3,2,1)%x3/=1) print *,203
if (a(3,2,1)%x4/=1) print *,203
write(2,*) a%x1
write(2,*) a%x2
write(2,*) a%x3
write(2,*) a%x4

rewind 2
read(2,*) aa
if (aa(6)/=1) print *,403
read(2,*) aa
if (aa(6)/=1) print *,403
read(2,*) aa
if (aa(6)/=1) print *,403
read(2,*) aa
if (aa(6)/=1) print *,403
print *,'pass'
end
