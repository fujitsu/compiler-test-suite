module m1
implicit none
real::v1
pointer (ptr,v1)
real::x(2)
contains
subroutine s
implicit none
x=[1,2]
end subroutine
end
module m2
implicit none
real::v2,y(2)
pointer (ptr,v2)
dimension v2(2)
private ptr
contains
subroutine ss
implicit none
y=[1,2]+10
ptr=loc(y)
if (any(v2/=10+[1,2]))print *,212
end subroutine

end

use m1
use m2
implicit none
ptr=loc(x)
call s
call ss
if (v1/=1)print *,201
if (any(v2/=10+[1,2]))print *,202
print *,'pass'
end
