module m1
type x
  real:: d1
  real,pointer,contiguous::p(:,:,:)
  real:: d2
end type
contains
subroutine s1(k,j,v)
  implicit none
  real,target:: t(3,3,1)=reshape([1,2,3,4,5,6,7,8,9],[3,3,1])
  type (x) :: v
integer::n,k,j

if (k==1) then
  v%p=> t(:,:,:)
  n=9
else
  n=6
endif
call ss( v%p ,n) 
end subroutine
end
use m1
  type (x) :: v
call s1(1,1,v)   
print *,'pass'
end

subroutine ss ( z ,n)
real :: z( n )
write(1,*)n,':',z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
end
