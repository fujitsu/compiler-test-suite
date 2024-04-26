module m1
type xx(k1)
integer,kind::  k1
integer:: a(k1)
end type
integer :: a1(1)
data (a1(k1),k1=1,1)/1/
contains
recursive subroutine s1(n)
if (a1(1)/=1) print *,101
 k1=n
 n=n+1
 if (n<3)call s1(n)
n=n-1
 if (k1/=n) print *,201,k1
end subroutine
end
use m1
n=0
call s1(n)
print *,'pass'
end
