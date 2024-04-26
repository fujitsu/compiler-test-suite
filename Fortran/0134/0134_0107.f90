module m1
type x
 character(2),allocatable::c1(:)
end type
 type(x)::v
integer n(2)
end 
subroutine s1
use m1
character(2)::z(2),zz(2)
allocate(v%c1(2))
v%c1=(/'3,','4 '/)
read(v%c1,'(i1/i1)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
v%c1=(/'(2','a)'/)
z=(/'3,','4 '/)
n=0
read(z,v%c1) zz
if (zz(1)/='3,')print *,1001,zz(1)
end
call s1
print *,'pass'
end
