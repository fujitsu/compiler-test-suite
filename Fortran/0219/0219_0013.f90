module m1
type x
 integer::x1
end type 
contains
subroutine s(a,k1,k2,n1,n2)
class(x),pointer,contiguous::a(:,:,:)
allocate(a(k1,k2,1))
select type(a)
type is(x)
a=x(0)
a((n1),(n2),(1))=x(1)
end select
end
end
use m1
parameter (k1=3,k2=2,n1=3,n2=2)
class(x),pointer,contiguous::a(:,:,:)
integer::aa(6)
call       s(a,k1,k2,n1,n2)
if (a(3,2,1)%x1/=1) print *,203
write(2,*) a%x1

rewind 2
read(2,*) aa
if (aa(6)/=1) print *,403
print *,'pass'
end
