module m1
type x
  real:: d1
  real,pointer,contiguous::p(:,:,:)
  real,allocatable       ::a(:,:,:)
  real:: d2
end type
integer(8)::k
contains
subroutine s1(c)
  implicit none
  real,contiguous        ::c(:,:,:)
	c=reshape([1,2,3,4,5,6,7,8,9],[3,3,1])
k=loc(c)
call ss(   c(:,:,1) ) 
call ss(   c(1:,:,1) ) 
call st(   c(2:,:,1) ) 
call ss(   c(:3,:,1) ) 
end subroutine
end
use m1
  real                   ::c(3,3,1)
call s1(c)   
print *,'pass'
end

subroutine ss ( z )
use m1,only:k
real :: z( 9 )
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
end
subroutine sx ( z )
use m1,only:k
real :: z( 9 )
if (k==loc(z)) print *,902
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,104
end
subroutine  st ( z )
use m1,only:k
real :: z( 6 )
if (k==loc(z)) print *,903
write(1,*)z
if (any( z/=[2,3,5,6,8,9])) print *,103
end

function   it ( z )
real :: z( 9 )
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
it=1
end
