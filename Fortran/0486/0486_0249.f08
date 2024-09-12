subroutine s1
  implicit none
type x
  real:: d1
  real,pointer,contiguous::p(:,:,:)
  real,allocatable       ::a(:,:,:)
  real:: d2
end type
  real,pointer,contiguous::p(:,:,:)
  real,target:: t(3,3,1)=reshape([1,2,3,4,5,6,7,8,9],[3,3,1])
  type (x) :: v

  v%p=> t(:,:,:)
  p=> t(:,:,:)
  allocate( v%a(3,3,1) , source=t )
call ss(   p(:,:,:) ) 
call ss( v%a(:,:,:) ) 
call ss( v%p(:,:,:) ) 
call ss( v%p        ) 
end
do k=1,100
call s1
end do
call s1   
print *,'pass'
end

subroutine ss ( z )
real :: z( 9 )
write(1,*)z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
end
