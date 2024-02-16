module m1
contains
 subroutine s(p,p1,p2,a1,a2,d1,d2,d3,d4,d5,e1,e2,e3,e4,e5)
 integer,allocatable,intent(in),optional::p(:,:)
 integer,allocatable,intent(in),optional::p1(:,:)
 integer,allocatable,intent(in),optional::p2(:,:)
 integer,pointer,intent(in),optional::a1(:,:)
 integer,pointer,intent(in),optional::a2(:,:)
 integer,allocatable,intent(in),optional::d1(:,:)
 integer,allocatable,intent(in),optional::d2(:,:)
 integer,allocatable,intent(in),optional::d3(:,:)
 integer,allocatable,intent(in),optional::d4(:,:)
 integer,allocatable,intent(in),optional::d5(:,:)
 integer,pointer,intent(in),optional::e1(:,:)
 integer,pointer,intent(in),optional::e2(:,:)
 integer,pointer,intent(in),optional::e3(:,:)
 integer,pointer,intent(in),optional::e4(:,:)
 integer,pointer,intent(in),optional::e5(:,:)
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
if (present(a2))then 
do k2=1,size(a2,2)
do k1=1,size(a2,1)
if ( a2(k1,k2)/=k1+k2 ) print *,1001,k1,k2,a2(k1,k2)
end do
end do
if (sum(a2)/=21) print *,2001
if (lbound(a2,1)/=1) print *,301
if (lbound(a2,2)/=1) print *,302
if (ubound(a2,1)/=2) print *,311
if (ubound(a2,2)/=3) print *,312
endif
if (present(a1))then 
do k2=1,size(a1,2)
do k1=1,size(a1,1)
if ( a1(k1,k2)/=k1+k2 ) print *,1001,k1,k2,a1(k1,k2)
end do
end do
if (sum(a1)/=21) print *,2001
if (lbound(a1,1)/=1) print *,301
if (lbound(a1,2)/=1) print *,302
if (ubound(a1,1)/=2) print *,311
if (ubound(a1,2)/=3) print *,312
endif
end subroutine
end
use m1
integer,allocatable:: p(:,:),p1(:,:),p2(:,:)
integer,pointer    :: a1(:,:),a2(:,:)
allocate( p(2,3), p1(2,3),p2(2,3),source=0)
allocate( a1(2,3),a2(2,3),source=0)
do k2=1,size(p,2)
do k1=1,size(p,1)
p(k1,k2)=k1+k2
p1(k1,k2)=k1+k2
p2(k1,k2)=k1+k2
a1(k1,k2)=k1+k2
a2(k1,k2)=k1+k2
end do
end do
call s(p,p1,p2,a1,a2)
call s( )
call s(p,p1,p2,a1,a2)
print *,'pass'
end 
