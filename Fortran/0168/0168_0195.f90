module m1
contains
subroutine s01()
type x
  real:: r
  real:: i
end type
complex,pointer :: c1(:)
type(x),pointer :: c2(:)
real,pointer :: r(:)
allocate(c1(2),source=[(1,2),(3,4)])
allocate(c2(2),source=[x(1,2),x(3,4)])
r=> c1(:)%im
if (any(r/=[2,4])) print *,202
r=> c2(:)%i
if (any(r/=[2,4])) print *,203
end subroutine
end
use m1
call s01()
print *,'pass'
end
