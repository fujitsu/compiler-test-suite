module m1
type x
 character(2),allocatable::c1(:)
 character(2),allocatable::z(:)
 character(2),allocatable::zz(:)
end type
 type(x)::v
integer n(2)
end 
subroutine s1
use m1
allocate(v%c1(2))
allocate(v%z (2))
allocate(v%zz(2))
v%c1=(/'3,','4 '/)
read(v%c1,'(i1/i1)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
v%c1=(/'(2','a)'/)
v%z=(/'3,','4 '/)
n=0
read(v%z,v%c1) v%zz
if (v%zz(1)/='3,')print *,1001,v%zz(1)
end
call s1
print *,'pass'
end
