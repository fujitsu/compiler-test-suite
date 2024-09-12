module m1
interface a
 procedure    s1
 procedure :: s2
end interface 
contains
subroutine s1(x)
x=1
end subroutine
subroutine s2(x)
integer::x
x=1
end subroutine
end
use m1
call a(n)
call a(b)
if (n/=1) print *,101
if (b/=1) print *,102
print *,'pass'
end
