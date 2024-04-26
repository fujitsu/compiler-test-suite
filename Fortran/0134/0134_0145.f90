module m1
type x
 character(2),allocatable::c1(:,:,:)
end type
 type(x)::v
integer n(24)
end 
subroutine s1
use m1
allocate(v%c1(2,3,4))
v%c1='3,'
read(v%c1,'(i1/i1)') n
if (any(n/=3))print *,'error-03'
end
call s1
print *,'pass'
end
