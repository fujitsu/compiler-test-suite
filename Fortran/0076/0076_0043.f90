module m1
contains
 subroutine s(p,a)
 entry      e(p,a)
 integer,pointer,intent(in)::p(:)
 integer,allocatable,intent(in)::a(:)
do k1=1,size(p,1)
p(k1)=k1
end do
end
end
use m1
integer,pointer,contiguous:: p(:)
 integer,allocatable::a(:)
allocate( a(2),p(2), source=0)
do k1=1,size(p,1)
a(k1)=k1
end do

call s(p,a)
p=0
call e(p,a)
print *,'pass'
end 
