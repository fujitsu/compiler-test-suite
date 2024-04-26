module m1
type x
  real:: d1
  real,pointer,contiguous::p(:,:,:)
  real,allocatable       ::a(:,:,:)
  real:: d2
end type
integer(8)::k
contains
subroutine s1(b,c,w,q)
  implicit none
integer::k2=2,k3=3
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
k=loc(b(1,3,1))
call ss(   b(:,k3,1) ) 
k=loc(c(1,3,1))
call ss(   c(:,k3,1) ) 
k=loc(a(1,3,1))
call ss(   a(:,k3,1) ) 
k=loc(p(1,3,1))
call ss(   p(:,k3,1) ) 
k=loc(q(1,3,1))
call ss(   q(:,k3,1) ) 
k=loc(v%a(1,3,1))
call ss( v%a(:,k3,1) ) 
k=loc(v%p(1,3,1))
call ss( v%p(:,k3,1) ) 
k=loc(w%a(1,3,1))
call ss( w%a(:,k3,1) ) 
k=loc(w%p(1,3,1))
call ss( w%p(:,k3,1) ) 
k=loc(b(1,3,1))
call st(   b(:2,k3,1) ) 
k=loc(c(1,3,1))
call st(   c(:2,k3,1) ) 
k=loc(a(1,3,1))
call st(   a(:2,k3,1) ) 
k=loc(p(1,3,1))
call st(   p(:2,k3,1) ) 
k=loc(q(1,3,1))
call st(   q(:2,k3,1) ) 
k=loc(v%a(1,3,1))
call st( v%a(:2,k3,1) ) 
k=loc(v%p(1,3,1))
call st( v%p(:2,k3,1) ) 
k=loc(w%a(1,3,1))
call st( w%a(:2,k3,1) ) 
k=loc(w%p(1,3,1))
call st( w%p(:2,k3,1) ) 
k=loc(b(1,3,1))
call st(   b(:k2,k3,1) ) 
k=loc(c(1,3,1))
call st(   c(:k2,k3,1) ) 
k=loc(a(1,3,1))
call st(   a(:k2,k3,1) ) 
k=loc(p(1,3,1))
call st(   p(:k2,k3,1) ) 
k=loc(q(1,3,1))
call st(   q(:k2,k3,1) ) 
k=loc(v%a(1,3,1))
call st( v%a(:k2,k3,1) ) 
k=loc(v%p(1,3,1))
call st( v%p(:k2,k3,1) ) 
k=loc(w%a(1,3,1))
call st( w%a(:k2,k3,1) ) 
k=loc(w%p(1,3,1))
call st( w%p(:k2,k3,1) ) 
k=loc(b(1,3,1))
call ss(   b(:3,k3,1) ) 
k=loc(c(1,3,1))
call ss(   c(:3,k3,1) ) 
k=loc(a(1,3,1))
call ss(   a(:3,k3,1) ) 
k=loc(p(1,3,1))
call ss(   p(:3,k3,1) ) 
k=loc(q(1,3,1))
call ss(   q(:3,k3,1) ) 
k=loc(v%a(1,3,1))
call ss( v%a(:3,k3,1) ) 
k=loc(v%p(1,3,1))
call ss( v%p(:3,k3,1) ) 
k=loc(w%a(1,3,1))
call ss( w%a(:3,k3,1) ) 
k=loc(w%p(1,3,1))
call ss( w%p(:3,k3,1) ) 
k=loc(b(1,3,1))
call ss(   b(:k3,k3,1) ) 
k=loc(c(1,3,1))
call ss(   c(:k3,k3,1) ) 
k=loc(a(1,3,1))
call ss(   a(:k3,k3,1) ) 
k=loc(p(1,3,1))
call ss(   p(:k3,k3,1) ) 
k=loc(q(1,3,1))
call ss(   q(:k3,k3,1) ) 
k=loc(v%a(1,3,1))
call ss( v%a(:k3,k3,1) ) 
k=loc(v%p(1,3,1))
call ss( v%p(:k3,k3,1) ) 
k=loc(w%a(1,3,1))
call ss( w%a(:k3,k3,1) ) 
k=loc(w%p(1,3,1))
call ss( w%p(:k3,k3,1) ) 
k=loc(b(1,3,1))
call sx(   b(vec,k3,1) ) 
k=loc(c(1,3,1))
call sx(   c(vec,k3,1) ) 
k=loc(a(1,3,1))
call sx(   a(vec,k3,1) ) 
k=loc(p(1,3,1))
call sx(   q(vec,k3,1) ) 
k=loc(p(1,3,1))
call sx(   p(vec,k3,1) ) 
k=loc(v%a(1,3,1))
call sx( v%a(vec,k3,1) ) 
k=loc(v%p(1,3,1))
call sx( v%p(vec,k3,1) ) 
k=loc(w%a(1,3,1))
call sx( w%a(vec,k3,1) ) 
k=loc(w%p(1,3,1))
call sx( w%p(vec,k3,1) ) 
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

subroutine ss ( z )
use m1,only:k
real :: z( 3 )
if (k/=loc(z)) then
 print *,901
endif
write(1,*)z
if (any( z/=[7,8,9])) print *,101
end
subroutine sx ( z )
use m1,only:k
real :: z( 3 )
if (k==loc(z)) print *,902
write(1,*)z
if (any( z/=[7,8,9])) print *,104
end
subroutine  st ( z )
use m1,only:k
real :: z( 2 )
if (k/=loc(z)) print *,903
write(1,*)z
if (any( z/=[7,8])) print *,103
end

function   it ( z )
real :: z( 9 )
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
it=1
end
