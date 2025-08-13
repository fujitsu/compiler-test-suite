module m1
contains
subroutine s(a,k1,k2,n1,n2)
integer,pointer,contiguous::a(:,:,:)
allocate(a(k1,k2,1))
a=0
a(n1,n2:n2,1)=1
end
end
use m1
parameter (k1=3,k2=2,n1=3,n2=2)
integer,pointer,contiguous::a(:,:,:)
integer::aa(6)
call       s(a,k1,k2,n1,n2)
if (a(3,2,1)/=1) print *,203
write(26,*) a

rewind 26
read(26,*) aa
if (aa(6)/=1) print *,403
print *,'pass'
end
