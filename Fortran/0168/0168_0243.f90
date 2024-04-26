module m1
complex,protected :: c1,c2(2)
contains
subroutine s1
c1%im=1.
c1%re=c1%im+2.
do concurrent(n=1:2)
c2(n)%im=cos(real(n))
c2(n)%re=cos(real(n+1))
end do
end subroutine
end
subroutine s2
use m1
if (c1%im/=1) print *,101
if (c1%re/=3) print *,102
do n=1,2
if (abs(c2(n)%im-cos(real(n)))>0.00001) print *,201
if (abs(c2(n)%re-cos(real(n+1)))>0.00001) print *,202
end do
end

use m1
call s1
call s2
print *,'pass'
end
