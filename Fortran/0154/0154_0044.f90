module m1
type x(k)
 integer,kind::k=4
 integer(k):: x=2
end type
contains
subroutine s1(n)
type( x ):: a(n)
if (a(1)%x/=2) print *,101
if (a(2)%x/=2) print *,102
end subroutine
end
use m1
call s1(2)
call s2(2)
print *,'pass'
end
subroutine s2(n)
use m1
type( x ):: a(n)
if (a(1)%x/=2) print *,201
if (a(2)%x/=2) print *,202
end subroutine
