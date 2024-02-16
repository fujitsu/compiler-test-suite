module m1
contains
 subroutine s(p,a)
 entry      e(p,a)
 integer,pointer,intent(in)::p(:,:)
 integer,allocatable,intent(in)::a(:,:)
do k2=1,size(p,2)
do k1=1,size(p,1)
p(k1,k2)=k1+k2
end do
end do
do k2=1,size(p,2)
do k1=1,size(p,1)
if ( p(k1,k2)/=k1+k2 ) print *,1001,k1,k2,p(k1,k2)
if ( a(k1,k2)/=k1+k2 ) print *,1011,k1,k2,a(k1,k2)
end do
end do
if (sum(p)/=21) print *,2001
if (lbound(p,1)/=1) print *,301
if (lbound(p,2)/=1) print *,302
if (ubound(p,1)/=2) print *,311
if (ubound(p,2)/=3) print *,312
if (sum(a)/=21) print *,2011
if (lbound(a,1)/=1) print *,321
if (lbound(a,2)/=1) print *,332
if (ubound(a,1)/=2) print *,341
if (ubound(a,2)/=3) print *,352
end
end
use m1
integer,pointer,contiguous:: p(:,:)
 integer,allocatable::a(:,:)
allocate( a(2,3),p(2,3), source=0)
do k2=1,size(p,2)
do k1=1,size(p,1)
a(k1,k2)=k1+k2
end do
end do

call s(p,a)
p=0
call e(p,a)
print *,'pass'
end 
