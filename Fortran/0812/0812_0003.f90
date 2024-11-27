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
real::y(2)
contains
subroutine ss
print *,6001,ptr
ptr=loc(y)
y=[11,12]
if (v1/=1)print *,301
print *,6001
if (any(v2/=[11,12]))print *,302
print *,6001
end subroutine
end

use m2
implicit none
call s
call ss
if (v1/=1)print *,201
print *,5001
print *,'pass'
end
