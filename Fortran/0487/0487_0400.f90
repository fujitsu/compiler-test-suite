module m1
contains
subroutine s1(a)
integer,pointer:: a(:)
volatile :: a
call s11(a)
contains
subroutine s11(a)
integer,value::a(3)
asynchronous :: a
a=1
end subroutine
end subroutine
end

use m1
integer,pointer:: a(:)
allocate(a(3))
 a=-1
call s1(a)
if (any(a/=-1)) print *,101
print *,'pass'
end
