subroutine s1(k,j)
  implicit none
type x
  real:: d1
  real,pointer::p(:,:,:)
  real:: d2
end type
  real,target:: t(3,3,1)=reshape([1,2,3,4,5,6,7,8,9],[3,3,1])
  type (x) :: v
real :: temp(j,j,j)
integer::n,k,j

if (k==1) then
  v%p=> t(:,:,:)
  n=9
else
  v%p=> t(::2,:,:)
  n=6
endif
call ss( v%p(:,:,j)  , v%p(:,:,j)  , temp(:,:,j) ,n) 
end
call s1(1,1)   
call s1(2,1)
print *,'pass'
end

subroutine ss ( z , zz ,w, n)
real :: z( n ), zz(n),w(*)
write(1,*)n,':',z
end
