module m1
contains
 subroutine s(p,p1,p2)
 integer,pointer,intent(in),optional::p(:,:)
 integer,pointer,intent(in),optional::p1(:,:)
 integer,pointer,intent(in),optional::p2(:,:)
if (present(p))then 
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
if (present(p2))then 
do k2=1,size(p2,2)
do k1=1,size(p2,1)
if ( p2(k1,k2)/=k1+k2 ) print *,1001,k1,k2,p2(k1,k2)
end do
end do
if (sum(p2)/=21) print *,2001
if (lbound(p2,1)/=1) print *,301
if (lbound(p2,2)/=1) print *,302
if (ubound(p2,1)/=2) print *,311
if (ubound(p2,2)/=3) print *,312
endif
if (present(p1))then 
do k2=1,size(p1,2)
do k1=1,size(p1,1)
if ( p1(k1,k2)/=k1+k2 ) print *,1001,k1,k2,p1(k1,k2)
end do
end do
if (sum(p1)/=21) print *,2001
if (lbound(p1,1)/=1) print *,301
if (lbound(p1,2)/=1) print *,302
if (ubound(p1,1)/=2) print *,311
if (ubound(p1,2)/=3) print *,312
endif
end subroutine
end
use m1
integer,pointer:: p(:,:),p1(:,:),p2(:,:)
allocate( p(2,3), p1(2,3),p2(2,3),source=0)
do k2=1,size(p,2)
do k1=1,size(p,1)
p(k1,k2)=k1+k2
p1(k1,k2)=k1+k2
p2(k1,k2)=k1+k2
end do
end do
call s(p,p1,p2)
call s( )
call s(p,p1,p2)
print *,'pass'
end 
