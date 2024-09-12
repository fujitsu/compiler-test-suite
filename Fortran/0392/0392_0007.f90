module m1
contains
subroutine s1(p)
integer,pointer::p(:)
i=f(p)
if (i/=0) print *,101
end subroutine
end
use m1
integer,pointer::p(:)
allocate(p(100))
call s1(p)
if (any(p/=1)) print *,'error'
print *,'pass'
end
function f(x)
integer::x(100)
x=1
f=0
end function

