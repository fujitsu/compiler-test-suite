module m1
type x
 character(2),allocatable::c1(:)
end type
 type(x)::v(3)
integer n(2)
end 
subroutine s1
use m1
allocate(v(2)%c1(2))
v(2)%c1=(/'3,','4 '/)
read(v(2)%c1,'(i1/i1)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
end
subroutine s2
use m1
k=3
allocate(v(k)%c1(2))
v(k)%c1=(/'3,','4 '/)
read(v(k)%c1,'(i1/i1)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
end
call s1
call s2
print *,'pass'
end
