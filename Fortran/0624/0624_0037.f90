module m1
 type b
   integer,pointer::b1(:,:,:)
 end type
 type,extends(b)::e
   integer,pointer::e1(:,:,:)
 end type
 type,extends(e)::x
   integer,pointer::x1(:,:,:)
 end type
end
subroutine s1
use m1
class(b),pointer::p(:,:,:)
type(b),pointer::pp(:,:,:)
integer,target::tb(4,6,8)=reshape([(n,n=1,4*6*8)],[4,6,8])
tb(1::2,1::2,1::2)=reshape([(n,n=0,4*6*8)],[4/2,6/2,8/2])
allocate(p(-2:-1,-3:-1,-4:-1),stat=k)
if (k/=0)print *,201
allocate(pp(-2:-1,-3:-1,-4:-1),stat=k)
if (k/=0)print *,201
      k=0
      do k3=lbound(p,3),ubound(p,3)
      do k2=lbound(p,2),ubound(p,2)
      do k1=lbound(p,1),ubound(p,1)
       p(k1,k2,k3)%b1(-2:,-3:,-4:)=>tb(1::2,1::2,1::2)
       pp(k1,k2,k3)%b1(-2:,-3:,-4:)=>tb(1::2,1::2,1::2)
       k=k+1
     end do
     end do
     end do

if (p(-2,-3,-4)%b1(-2,-3,-4)/=0)print *,100
if (p(-2,-3,-4)%b1(-1,-3,-4)/=1)print *,101
if (p(-2,-3,-4)%b1(-2,-2,-4)/=2)print *,102
if (p(-2,-3,-4)%b1(-1,-2,-4)/=3)print *,103
if (pp(-2,-3,-4)%b1(-2,-3,-4)/=0)print *,100
if (pp(-2,-3,-4)%b1(-1,-3,-4)/=1)print *,101
if (pp(-2,-3,-4)%b1(-2,-2,-4)/=2)print *,102
if (pp(-2,-3,-4)%b1(-1,-2,-4)/=3)print *,103
end
call s1
 print*,'pass'
end
