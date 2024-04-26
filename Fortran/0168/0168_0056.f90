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
call ss(              & 
           b(:,:,1) )  
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

subroutine ss ( z1)
use m1
real,dimension(9) :: z1
if (k1/=loc(z1))  print *,902
if (any( z1/=[1,2,3,4,5,6,7,8,9])) print *,101
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
