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
k=loc(b(1,1,1))
call= ss(   b(:,:,1) ) 
if (call/=1) print *,9001
k=loc(c(1,1,1))
call= ss(   c(:,:,1) ) 
if (call/=1) print *,9001
k=loc(a(1,1,1))
call= ss(   a(:,:,1) ) 
if (call/=1) print *,9001
k=loc(p(1,1,1))
call= ss(   p(:,:,1) ) 
if (call/=1) print *,9001
k=loc(q(1,1,1))
call= ss(   q(:,:,1) ) 
if (call/=1) print *,9001
k=loc(v%a(1,1,1))
call= ss( v%a(:,:,1) ) 
if (call/=1) print *,9001
k=loc(v%p(1,1,1))
call= ss( v%p(:,:,1) ) 
if (call/=1) print *,9001
k=loc(w%a(1,1,1))
call= ss( w%a(:,:,1) ) 
if (call/=1) print *,9001
k=loc(w%p(1,1,1))
call= ss( w%p(:,:,1) ) 
if (call/=1) print *,9001
k=loc(b(1,1,1))
call= st(   b(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(c(1,1,1))
call= st(   c(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(a(1,1,1))
call= st(   a(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(p(1,1,1))
call= st(   p(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(q(1,1,1))
call= st(   q(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(v%a(1,1,1))
call= st( v%a(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(v%p(1,1,1))
call= st( v%p(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(w%a(1,1,1))
call= st( w%a(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(w%p(1,1,1))
call= st( w%p(:2,:,1) ) 
if (call/=1) print *,9001
k=loc(b(1,1,1))
call= st(   b(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(c(1,1,1))
call= st(   c(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(a(1,1,1))
call= st(   a(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(p(1,1,1))
call= st(   p(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(q(1,1,1))
call= st(   q(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(v%a(1,1,1))
call= st( v%a(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(v%p(1,1,1))
call= st( v%p(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(w%a(1,1,1))
call= st( w%a(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(w%p(1,1,1))
call= st( w%p(:k2,:,1) ) 
if (call/=1) print *,9001
k=loc(b(1,1,1))
call= ss(   b(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(c(1,1,1))
call= ss(   c(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(a(1,1,1))
call= ss(   a(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(p(1,1,1))
call= ss(   p(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(q(1,1,1))
call= ss(   q(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(v%a(1,1,1))
call= ss( v%a(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(v%p(1,1,1))
call= ss( v%p(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(w%a(1,1,1))
call= ss( w%a(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(w%p(1,1,1))
call= ss( w%p(:3,:,1) ) 
if (call/=1) print *,9001
k=loc(b(1,1,1))
call= ss(   b(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(c(1,1,1))
call= ss(   c(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(a(1,1,1))
call= ss(   a(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(p(1,1,1))
call= ss(   p(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(q(1,1,1))
call= ss(   q(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(v%a(1,1,1))
call= ss( v%a(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(v%p(1,1,1))
call= ss( v%p(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(w%a(1,1,1))
call= ss( w%a(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(w%p(1,1,1))
call= ss( w%p(:k3,:,1) ) 
if (call/=1) print *,9001
k=loc(b(1,1,1))
call= sx(   b(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(c(1,1,1))
call= sx(   c(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(a(1,1,1))
call= sx(   a(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(p(1,1,1))
call= sx(   q(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(p(1,1,1))
call= sx(   p(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(v%a(1,1,1))
call= sx( v%a(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(v%p(1,1,1))
call= sx( v%p(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(w%a(1,1,1))
call= sx( w%a(vec,:,1) ) 
if (call/=1) print *,9001
k=loc(w%p(1,1,1))
call= sx( w%p(vec,:,1) ) 
if (call/=1) print *,9001
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

function ss ( z )
use m1,only:k
real :: z( 9 )
if (k/=loc(z)) then
 print *,901
endif
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
ss=1
end
function sx ( z )
use m1,only:k
real :: z( 9 )
if (k==loc(z)) print *,902
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,104
sx=1
end
function  st ( z )
use m1,only:k
real :: z( 6 )
if (k==loc(z)) print *,903
write(1,*)z
if (any( z/=[1,2,4,5,7,8])) print *,103
st=1
end

function   it ( z )
real :: z( 9 )
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
it=1
end
