module m1
type x
  integer::x1
end type
type,extends(x)::y
  integer::y1
end type
contains
 subroutine ss(c1)
type(*)::c1
optional:: c1
if (present(c1)) then
write(1,'(z16.16)') loc(c1)
end if
k=0
if (present(c1)) then
 k=1
end if
end subroutine
end
subroutine s1
use m1
class(x),allocatable::c1
call ss()
end
call s1
print *,'pass'
end
