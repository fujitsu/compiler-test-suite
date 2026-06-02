module m1
type x
  real:: d1
  real,pointer,contiguous::p(:,:,:)
  real,allocatable       ::a(:,:,:)
  real:: d2
end type
integer(8)::k1,k2,k3,k4,k5,k6,k7,k8,k9
contains
subroutine s1(b,c,w,q)
  implicit none
  real,pointer,contiguous::p(:,:,:)
  real,pointer,contiguous::q(:,:,:)
  real,allocatable       ::a(:,:,:)
  real                   ::b(:,:,:)
  real,contiguous        ::c(:,:,:)
  real,target:: t(3,3,1)=reshape([1,2,3,4,5,6,7,8,9],[3,3,1])
  type (x) :: v,w
  integer:: vec(3)=[1,2,3]

  v%p=> t(:,:,:)
  w%p=> t(:,:,:)
  p=> t(:,:,:)
  q=> t(:,:,:)
  allocate( v%a(3,3,1) , source=t )
  allocate( w%a(3,3,1) , source=t )
  allocate(   a(3,3,1) , source=t )
  b=t
	c=t
k1=loc(b(1,1,1))
k2=loc(c(1,1,1))
k3=loc(a(1,1,1))
k4=loc(p(1,1,1))
k5=loc(q(1,1,1))
k6=loc(v%a(1,1,1))
k7=loc(v%p(1,1,1))
k8=loc(w%a(1,1,1))
k9=loc(w%p(1,1,1))
call ss(              & 
           c(:,:,1) , &
           a(:,:,1) , &
           p(:,:,1) , &
           q(:,:,1) , &
         v%a(:,:,1) , &
         v%p(:,:,1) , &
         w%a(:,:,1) , &
         w%p(:,:,1) ) 
end subroutine
end
use m1
  real                   ::b(3,3,1)
  real                   ::c(3,3,1)
  type (x) :: w
  real,pointer,contiguous::q(:,:,:)
call s1(b,c,w,q)   
print *,'pass'
end

subroutine ss (    z2,z3,z4,z5,z6,z7,z8,z9)
use m1
real,dimension(9) :: z2,z3,z4,z5,z6,z7,z8,z9
if (k2/=loc(z2))  print *,902
if (k3/=loc(z3))  print *,903
if (k4/=loc(z4))  print *,904
if (k5/=loc(z5))  print *,905
if (k6/=loc(z6))  print *,906
if (k7/=loc(z7))  print *,907
if (k8/=loc(z8))  print *,908
if (k9/=loc(z9))  print *,909
if (any( z2/=[1,2,3,4,5,6,7,8,9])) print *,102
if (any( z3/=[1,2,3,4,5,6,7,8,9])) print *,103
if (any( z4/=[1,2,3,4,5,6,7,8,9])) print *,104
if (any( z5/=[1,2,3,4,5,6,7,8,9])) print *,105
if (any( z6/=[1,2,3,4,5,6,7,8,9])) print *,106
if (any( z7/=[1,2,3,4,5,6,7,8,9])) print *,107
if (any( z8/=[1,2,3,4,5,6,7,8,9])) print *,108
if (any( z9/=[1,2,3,4,5,6,7,8,9])) print *,109
end
subroutine sx ( z )
use m1,only:k1
real :: z( 9 )
if (k1==loc(z)) print *,902
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,104
end
subroutine  st ( z )
use m1,only:k1
real :: z( 6 )
if (k1==loc(z)) print *,903
write(1,*)z
if (any( z/=[1,2,4,5,7,8])) print *,103
end

function   it ( z )
real :: z( 9 )
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
it=1
end
