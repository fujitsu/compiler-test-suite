module m1
type x
  integer::x1
end type
type,extends(x)::y
  integer::y1
end type
contains
 subroutine ss(c1,c2)
type(*)::c1
type(*)::c2(..)
optional:: c1,c2
if (present(c1)) then
write(1,'(z16.16)') loc(c1)
if (present(c2)) then
end if
write(1,'(z16.16)') loc(c2)
end if
k=0
if (present(c1)) then
 k=1
end if
if (k/=0) print *,102
end subroutine
end
subroutine s1
use m1
call ss( )
end
call s1
print *,'pass'
end
