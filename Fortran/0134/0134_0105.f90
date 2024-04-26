module m1
type x
 character(2),allocatable::c1
end type
 type(x)::v
integer n(2)
end 
subroutine s1
use m1
allocate(v%c1)
v%c1='3,'
read(v%c1,'(i1)') n(1)
if (n(1)/=3)print *,'error-03'
end
call s1
print *,'pass'
end
