module m1
implicit none
real::v1
pointer (ptr,v1)
integer::xxxxxxx
contains
subroutine s(x)
real::x
ptr=loc(x)
end subroutine
end

use m1,only:v1,s
implicit none
real::x=1
call s(x)

if (v1/=1)print *,201
print *,'pass'
end
