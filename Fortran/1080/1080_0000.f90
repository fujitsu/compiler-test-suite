module m1
contains
subroutine s(a)
type(*)::a(..)
!print '(z16.16)',loc(a)
write(10, '(z16.16)')loc(a)
end subroutine
end
module m2
contains
subroutine s1(d)
use m1
type(*)::d(..)
call s(d)
end
end
use m2
integer::x(2)
call s1(x)
print *,'sngg228m : pass'
end
