module m1
contains
subroutine s01()
complex,target :: t(2)=[(1,2),(3,4)]
real,pointer :: r3(:)
r3=> t(:)%re
if (any(r3/=[1,3])) print *,203,r3
end subroutine
end
use m1
call s01()
print *,'pass'
end
