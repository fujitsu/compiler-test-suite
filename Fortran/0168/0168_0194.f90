module m1
contains
subroutine s01()
complex,pointer :: c(:)
complex,target :: t(2)
real,pointer :: r3(:)
allocate(c(2),source=[(1,2),(3,4)])
t=c
r3=> c(:)%im
if (any(r3/=[2,4])) print *,202
r3=> t(:)%re
if (any(r3/=[1,3])) print *,203,r3
end subroutine
end
use m1
call s01()
print *,'pass'
end
