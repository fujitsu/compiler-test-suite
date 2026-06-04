module m1
contains
subroutine s1(a)
integer:: a(:)
volatile :: a
call s11(a)
contains
subroutine s11(a)
integer::a(2)
asynchronous :: a
value::a
a=1
end subroutine
end subroutine
end

use m1
integer:: a(3)=-1
call s1(a)
if (any(a/=-1)) print *,101
print *,'pass'
end
