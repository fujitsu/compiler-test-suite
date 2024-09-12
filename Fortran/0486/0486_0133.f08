module m1
type x
  integer::x1
end type
type,extends(x)::y
  integer::y1
end type
contains
subroutine ss(c1,c2)
class(*),allocatable::c1
class(*),allocatable::c2(:)
optional:: c1,c2
if (present(c1)) then
write(1,'(z16.16)') loc(c1)
 print *,102
end if
if (present(c2)) then
write(1,'(z16.16)') loc(c2)
 print *,9102
end if
end subroutine
end
use m1
call ss
print *,'pass'
end
