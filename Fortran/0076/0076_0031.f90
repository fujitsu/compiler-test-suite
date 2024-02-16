module m1
 type x
   integer:: x1
 integer,allocatable::p(:,:)
   integer:: x2
end type
contains
 subroutine s(p,v)
 integer,allocatable,intent(in)::p(:,:)
type (x) ,allocatable,intent(in)::v(:)
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
if (v(2)%x1/=2) print *,601,v(2)%x1
if (v(2)%x2/=5) print *,602,v(2)%x2
if (sum(v(2)%p)/=21) print *,6001,v(2)%p
if (lbound(v(2)%p,1)/=1) print *,6301
if (lbound(v(2)%p,2)/=1) print *,6302
if (ubound(v(2)%p,1)/=2) print *,6311
if (ubound(v(2)%p,2)/=3) print *,6312
end
end
use m1
integer,allocatable:: p(:,:)
type (x) ,allocatable::v(:)
allocate( p(2,3), source=0)
allocate(v(2))
do k2=1,size(p,2)
do k1=1,size(p,1)
p(k1,k2)=k1+k2
end do
end do
v(2)=x(p(1,1),p,p(2,3))
call s(p,v)
print *,'pass'
end 
