module m1
implicit none
real::v1,v2
pointer (ptr,v1)
pointer (ptr,v2)
private ptr
real::x
contains
subroutine s
implicit none
x=1
ptr=loc(x)
end subroutine
end
module m2
use m1
implicit none
end

use m2
implicit none
call s
if (v1/=1)print *,201
if (v2/=1)print *,202
print *,'pass'
end
