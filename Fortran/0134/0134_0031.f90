module m1
type x
 integer:: x1
 integer::x2
end type
contains
subroutine s(xx)
type(x)::xx
integer a(4+ xx%x2)
do i=1,6
a(i)=i
end do
if (any(a/=(/1,2,3,4,5,6/)))print *,a
if (size(a)/=6)print *,102,size(a)
if (sizeof(a)/=6*4)print *,103,sizeof(a)
end subroutine
end
use m1
type(x)::yy
yy%x2=2
call s(yy)
print *,'pass'
end

