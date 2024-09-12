module m1
type x
 character(:),allocatable::c1(:)
end type
 type(x)::v
integer n(2)
end 
subroutine s1
use m1
allocate(character(2)::v%c1(2))
v%c1(:)=(/'3,','4 '/)
read(v%c1,'(i1/i1)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
end
call s1
print *,'pass'
end
