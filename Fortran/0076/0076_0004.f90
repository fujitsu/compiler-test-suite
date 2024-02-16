module m1
contains
 subroutine s(p)
 entry      e(p)
 integer,pointer,intent(in),optional::p(:,:)
if (present(p))then 
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
endif
end
end
use m1
integer,pointer,contiguous:: p(:,:)
allocate( p(2,3), source=0)
call s(p)
call s( )
p=0
call e(p)
call e( )
p=0
call s(p)
print *,'pass'
end 
