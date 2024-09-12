module m1
integer,asynchronous,pointer::a(:)
contains
subroutine s1(b)
integer,asynchronous::b(:)
if (any(b/=[1,2,3,4,5])) print *,101
end subroutine
end
use m1
allocate(a(5))
a=[1,2,3,4,5]
call s1(a)
print *,'pass'
end

