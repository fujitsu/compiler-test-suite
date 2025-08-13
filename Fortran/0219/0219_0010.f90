module m1
contains
subroutine s(a,k1,k2,n1,n2)
character(*),pointer,contiguous::a(:,:,:)
allocate(a(2:k1+1,3:k2+2,4:1+3))
a='0'
a(1+n1,n2+2,1+3)='1'
end
end
use m1
parameter (k1=3,k2=2,n1=3,n2=2)
character(1),pointer,contiguous::a(:,:,:)
character     ::aa(6)
call       s(a,k1,k2,n1,n2)
if (a(1+3,2+2,3+1)/='1') print *,203
open(3,delim='quote')
write(3,*) a

rewind 3
read(3,*) aa
if (aa(6)/='1') print *,403
print *,'pass'
end
