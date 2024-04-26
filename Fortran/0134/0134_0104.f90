module m1
contains
subroutine s1(b)
character(*)::b(:)
integer n(2)
b=(/'3,','4 '/)
read(b,'(i1/i1)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
end subroutine
end
use m1
character(2)::b(2)
call s1(b)
print *,'pass'
end
