module m1
implicit none
real::v1
pointer (ptr,v1)
real::x(2)
contains
subroutine s
implicit none
x=[1,2]
ptr=loc(x)
end subroutine
end
module m2
use m1
implicit none
real::v2
pointer (ptr,v2)
dimension v2(2)
private ptr
end

use m2
implicit none
call s
if (v1/=1)print *,201
print *,1001
if (any(v2/=[1,2]))print *,202
print *,'pass'
end
