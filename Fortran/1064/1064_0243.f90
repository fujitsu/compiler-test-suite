module m1
complex,protected :: c1,c2(2)
contains
subroutine s1
c1%im=1.
c1%re=2.
do concurrent(n=1:2)
c2(n)%im=n
c2(n)%re=n+1
end do
end subroutine
end
subroutine s2
use m1
if (c1%im/=1) print *,101
if (c1%re/=2) print *,102
do n=1,2
if (c2(n)%im/=n) print *,201
if (c2(n)%re/=n+1) print *,202
end do
end

use m1
call s1
call s2
print *,'pass'
end
