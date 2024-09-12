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
private ptr
contains
subroutine ss
real::v2,y(2)
pointer (ptr,v2)
dimension v2(2)
y=[11,12]
ptr=loc(y)
if (v1/=1)print *,301
if (any(v2/=[11,12]))print *,302
end subroutine
end

use m2
implicit none
call s
call ss
if (v1/=1)print *,201
print *,'pass'
end
