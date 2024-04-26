module m1
contains
subroutine s01()
complex,pointer :: c(:)
real,pointer :: r1(:),r2(:),r3(:)
allocate(c(2),source=[(1,2),(3,4)])
allocate(r1(2),r2(2),source=c(:)%im     )
if (any(r1/=[2,4])) print *,201
if (any(r2/=[2,4])) print *,202
r3=> c(:)%im
if (any(r3/=[2,4])) print *,202
end subroutine
end
use m1
call s01()
print *,'pass'
end
