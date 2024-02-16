module m1
 type x
   integer:: x1
 integer,pointer::p(:,:)
   integer:: x2
end type
type (x) ::v
contains
 subroutine s(p)
 integer,pointer,intent(in)::p(:,:)
do k2=1,size(p,2)
do k1=1,size(p,1)
p(k1,k2)=k1+k2
end do
end do
do k2=1,size(p,2)
do k1=1,size(p,1)
if ( p(k1,k2)/=k1+k2 ) print *,1001,k1,k2,p(k1,k2)
end do
end do
if (sum(p)/=21) print *,2001
if (lbound(p,1)/=1) print *,301
if (lbound(p,2)/=1) print *,302
if (ubound(p,1)/=2) print *,311
if (ubound(p,2)/=3) print *,312
v=x(p(1,1),p,p(2,3))
if (v%x1/=2) print *,601,v%x1
if (v%x2/=5) print *,602,v%x2
if (sum(v%p)/=21) print *,6001,v%p
if (lbound(v%p,1)/=1) print *,6301
if (lbound(v%p,2)/=1) print *,6302
if (ubound(v%p,1)/=2) print *,6311
if (ubound(v%p,2)/=3) print *,6312
end
end
use m1
integer,pointer,contiguous:: p(:,:)
allocate( p(2,3), source=0)
call s(p)
print *,'pass'
end 
