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
contains
function funb(p) result(r)
 class(b),pointer    ::r(:,:,:)
 class(b),pointer:: p(:,:,:)
allocate(x::r(-2:-1,-3:-1,-4:-1),stat=k)
if (k/=0)print *,3201
if (any(lbound(r)/=[-2,-3,-4]))print *,3202

n=0
select type(p)
 type is(x)
      n=n+5
  select type (r)
    type is(b)
       print *,3204
    type is(x)
      if (any(lbound(p)/=[-2,-3,-4]))print *,3210
      do k3=lbound(p,3),ubound(p,3)
      do k2=lbound(p,2),ubound(p,2)
      do k1=lbound(p,1),ubound(p,1)
       if (any(lbound(p(k1,k2,k3)%b1)/=[-2,-3,-4]))print *,3211
       allocate(r(k1,k2,k3)%b1(-2:-1,-3:-1,-4:-1),stat=k)
       if (k/=0)print *,3100
       r(k1,k2,k3)%b1=p(k1,k2,k3)%b1
       if (any(lbound(p(k1,k2,k3)%e1)/=[-2,-3,-4]))print *,23211
       allocate(r(k1,k2,k3)%e1(-2:-1,-3:-1,-4:-1),stat=k)
       if (k/=0)print *,23100
       r(k1,k2,k3)%e1=p(k1,k2,k3)%e1
       allocate(r(k1,k2,k3)%x1(-2:-1,-3:-1,-4:-1),stat=k)
       if (k/=0)print *,323100
       r(k1,k2,k3)%x1=p(k1,k2,k3)%x1
      end do
      end do
      end do
      n=n+5
     type is(e)
       print *,3212
     class default
       print *,3213
  end select
     class default
       print *,3216
end select
if (n/=10) print *,3217
      if (any(lbound(p)/=[-2,-3,-4]))print *,3220
      if (any(lbound(r)/=[-2,-3,-4]))print *,3221
      k=0
      do k3=lbound(p,3),ubound(p,3)
      do k2=lbound(p,2),ubound(p,2)
      do k1=lbound(p,1),ubound(p,1)
       if (any(lbound(p(k1,k2,k3)%b1)/=[-2,-3,-4]))print *,3212
       if (any(lbound(r(k1,k2,k3)%b1)/=[-2,-3,-4]))print *,3213
       if (any(r(k1,k2,k3)%b1/=p(k1,k2,k3)%b1))print *,3214
       if (any(r(k1,k2,k3)%b1/=k))print *,3215
       nn=0
       select type(r) 
          type is(x)
             select type(p)
               type is(x)
       nn=1
       if (any(lbound(p(k1,k2,k3)%e1)/=[-2,-3,-4]))print *,33212
       if (any(lbound(r(k1,k2,k3)%e1)/=[-2,-3,-4]))print *,33213
       if (any(r(k1,k2,k3)%e1/=p(k1,k2,k3)%e1))print *,33214
       if (any(r(k1,k2,k3)%e1/=-k))print *,33215
       if (any(lbound(p(k1,k2,k3)%x1)/=[-2,-3,-4]))print *,43212
       if (any(lbound(r(k1,k2,k3)%x1)/=[-2,-3,-4]))print *,43213
       if (any(r(k1,k2,k3)%x1/=p(k1,k2,k3)%x1))print *,43214
       if (any(r(k1,k2,k3)%x1/=-k))print *,43215
              end select
       end select
       if (nn/=1) print *,33216

       k=k+1
      end do
      end do
      end do
end function
end
subroutine s1
use m1
class(b),pointer::p(:,:,:),pp(:,:,:)
integer,target::t(4,6,8)=reshape([(n,n=1,4*6*8)],[4,6,8])
allocate(x::p(-2:-1,-3:-1,-4:-1),stat=k)
if (k/=0)print *,201
      k=0
      do k3=lbound(p,3),ubound(p,3)
      do k2=lbound(p,2),ubound(p,2)
      do k1=lbound(p,1),ubound(p,1)
       allocate(p(k1,k2,k3)%b1(-2:-1,-3:-1,-4:-1))
       p(k1,k2,k3)%b1=k
       k=k+1
     end do
     end do
     end do
k=-1
select type (p)
type is(x)
      k=0
      do k3=lbound(p,3),ubound(p,3)
      do k2=lbound(p,2),ubound(p,2)
      do k1=lbound(p,1),ubound(p,1)
       allocate(p(k1,k2,k3)%e1(-2:-1,-3:-1,-4:-1))
       p(k1,k2,k3)%e1=-k
       allocate(p(k1,k2,k3)%x1(-2:-1,-3:-1,-4:-1))
       p(k1,k2,k3)%x1=-k
       k=k+1
     end do
     end do
     end do
end select
if (k==-1)print *,301

pp => funb(p)
n=0
select type (pp)
type is(b)
  print *,501
type is(e)
  print *,502
type is (x)
      k=0
      do k3=lbound(pp,3),ubound(pp,3)
      do k2=lbound(pp,2),ubound(pp,2)
      do k1=lbound(pp,1),ubound(pp,1)
       if (any(lbound(pp(k1,k2,k3)%b1)/=[-2,-3,-4]))print *,5212
       if (any(pp(k1,k2,k3)%b1/=k))print *,5215
       if (any(lbound(pp(k1,k2,k3)%e1)/=[-2,-3,-4]))print *,35212
       if (any(pp(k1,k2,k3)%e1/=-k))print *,35215
       if (any(lbound(pp(k1,k2,k3)%x1)/=[-2,-3,-4]))print *,45212
       if (any(pp(k1,k2,k3)%x1/=-k))print *,45215
       k=k+1
      end do
      end do
      end do
      n=10
end select
if (n/=10) print *,5215
end
call s1
 print*,'pass'
end
