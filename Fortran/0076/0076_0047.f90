module m1
contains
 subroutine s(p,a)
 entry      e(p,a)
 integer,pointer,intent(in)::p(:,:)
 integer,allocatable,intent(in)::a(:,:)
do k2=1,3
do k1=1,2
p(k1,k2)=1
end do
end do
end
end
use m1
integer,pointer,contiguous:: p(:,:)
 integer,allocatable::a(:,:)
allocate( a(2,3),p(2,3), source=0)
do k2=1,size(p,2)
do k1=1,size(p,1)
a(k1,k2)=k1+k2
end do
end do

call s(p,a)
call e(p,a)
print *,'pass'
end 
