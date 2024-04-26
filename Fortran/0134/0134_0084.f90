module m1
type x
 character(2),allocatable::c1(:,:)
end type
 type(x)::v
integer n(6)
end 
subroutine s1
use m1
allocate(v%c1(2,3))
v%c1=reshape((/'3','4','5','6','7','8'/),(/2,3/))
read(v%c1,'(i2)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
if (n(3)/=5)print *,'error-04'
if (n(4)/=6)print *,'error-04'
if (n(5)/=7)print *,'error-04'
if (n(6)/=8)print *,'error-04'
end
call s1
print *,'pass'
end
