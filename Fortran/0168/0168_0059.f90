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
call ss( is_contiguous(  b(:,k3,1) ) ) 
k=loc(c(1,3,1))
call ss( is_contiguous(  c(:,k3,1) ) ) 
k=loc(a(1,3,1))
call ss( is_contiguous(  a(:,k3,1) ) ) 
k=loc(p(1,3,1))
call ss( is_contiguous(  p(:,k3,1) ) ) 
k=loc(q(1,3,1))
call ss( is_contiguous(  q(:,k3,1) ) ) 
k=loc(v%a(1,3,1))
call ss( is_contiguous(v%a(:,k3,1) ) ) 
k=loc(v%p(1,3,1))
call ss( is_contiguous(v%p(:,k3,1) ) ) 
k=loc(w%a(1,3,1))
call ss( is_contiguous(w%a(:,k3,1) ) ) 
k=loc(w%p(1,3,1))
call ss( is_contiguous(w%p(:,k3,1) ) ) 
k=loc(b(1,3,1))
call st( is_contiguous(  b(:2,k3,1) ) ) 
k=loc(c(1,3,1))
call st( is_contiguous(  c(:2,k3,1) ) ) 
k=loc(a(1,3,1))
call st( is_contiguous(  a(:2,k3,1) ) ) 
k=loc(p(1,3,1))
call st( is_contiguous(  p(:2,k3,1) ) ) 
k=loc(q(1,3,1))
call st( is_contiguous(  q(:2,k3,1) ) ) 
k=loc(v%a(1,3,1))
call st( is_contiguous(v%a(:2,k3,1) ) ) 
k=loc(v%p(1,3,1))
call st( is_contiguous(v%p(:2,k3,1) ) ) 
k=loc(w%a(1,3,1))
call st( is_contiguous(w%a(:2,k3,1) ) ) 
k=loc(w%p(1,3,1))
call st( is_contiguous(w%p(:2,k3,1) ) ) 
k=loc(b(1,3,1))
call st( is_contiguous(  b(:k2,k3,1) ) ) 
k=loc(c(1,3,1))
call st( is_contiguous(  c(:k2,k3,1) ) ) 
k=loc(a(1,3,1))
call st( is_contiguous(  a(:k2,k3,1) ) ) 
k=loc(p(1,3,1))
call st( is_contiguous(  p(:k2,k3,1) ) ) 
k=loc(q(1,3,1))
call st( is_contiguous(  q(:k2,k3,1) ) ) 
k=loc(v%a(1,3,1))
call st( is_contiguous(v%a(:k2,k3,1) ) ) 
k=loc(v%p(1,3,1))
call st( is_contiguous(v%p(:k2,k3,1) ) ) 
k=loc(w%a(1,3,1))
call st( is_contiguous(w%a(:k2,k3,1) ) ) 
k=loc(w%p(1,3,1))
call st( is_contiguous(w%p(:k2,k3,1) ) ) 
k=loc(b(1,3,1))
call ss( is_contiguous(  b(:3,k3,1) ) ) 
k=loc(c(1,3,1))
call ss( is_contiguous(  c(:3,k3,1) ) ) 
k=loc(a(1,3,1))
call ss( is_contiguous(  a(:3,k3,1) ) ) 
k=loc(p(1,3,1))
call ss( is_contiguous(  p(:3,k3,1) ) ) 
k=loc(q(1,3,1))
call ss( is_contiguous(  q(:3,k3,1) ) ) 
k=loc(v%a(1,3,1))
call ss( is_contiguous(v%a(:3,k3,1) ) ) 
k=loc(v%p(1,3,1))
call ss( is_contiguous(v%p(:3,k3,1) ) ) 
k=loc(w%a(1,3,1))
call ss( is_contiguous(w%a(:3,k3,1) ) ) 
k=loc(w%p(1,3,1))
call ss( is_contiguous(w%p(:3,k3,1) ) ) 
k=loc(b(1,3,1))
call ss( is_contiguous(  b(:k3,k3,1) ) ) 
k=loc(c(1,3,1))
call ss( is_contiguous(  c(:k3,k3,1) ) ) 
k=loc(a(1,3,1))
call ss( is_contiguous(  a(:k3,k3,1) ) ) 
k=loc(p(1,3,1))
call ss( is_contiguous(  p(:k3,k3,1) ) ) 
k=loc(q(1,3,1))
call ss( is_contiguous(  q(:k3,k3,1) ) ) 
k=loc(v%a(1,3,1))
call ss( is_contiguous(v%a(:k3,k3,1) ) ) 
k=loc(v%p(1,3,1))
call ss( is_contiguous(v%p(:k3,k3,1) ) ) 
k=loc(w%a(1,3,1))
call ss( is_contiguous(w%a(:k3,k3,1) ) ) 
k=loc(w%p(1,3,1))
call ss( is_contiguous(w%p(:k3,k3,1) ) ) 
k=loc(b(1,3,1))
call sx( is_contiguous(  b(vec,k3,1) ) ) 
k=loc(c(1,3,1))
call sx( is_contiguous(  c(vec,k3,1) ) ) 
k=loc(a(1,3,1))
call sx( is_contiguous(  a(vec,k3,1) ) ) 
k=loc(p(1,3,1))
call sx( is_contiguous(  q(vec,k3,1) ) ) 
k=loc(p(1,3,1))
call sx( is_contiguous(  p(vec,k3,1) ) ) 
k=loc(v%a(1,3,1))
call sx( is_contiguous(v%a(vec,k3,1) ) ) 
k=loc(v%p(1,3,1))
call sx( is_contiguous(v%p(vec,k3,1) ) ) 
k=loc(w%a(1,3,1))
call sx( is_contiguous(w%a(vec,k3,1) ) ) 
k=loc(w%p(1,3,1))
call sx( is_contiguous(w%p(vec,k3,1) ) ) 
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
logical z
if (.not. z) then
 print *,901
endif
end
subroutine sx ( z )
logical z
if (z) then
 print *,902
endif
end
subroutine  st ( z )
logical z
if (.not. z) then
 print *,901
endif
end

function   it ( z )
real :: z( 9 )
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
it=1
end
