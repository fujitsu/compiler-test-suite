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
v%c1='3'
read(v%c1,'(i2)') n(2)
if (n(2)/=3)print *,'error-04'
end
call s1
print *,'pass'
end
