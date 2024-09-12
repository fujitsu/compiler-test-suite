MODULE m1
type xx
integer:: u
end type
  TYPE :: x
    type(xx), ALLOCATABLE :: z(:)
  END TYPE
end
subroutine s1
use  m1
  TYPE(x) :: v(1)
call ss(xx(1))
end
do k=1,30
call s1
end do
print *,'pass'
end
subroutine ss(w)
use m1
type(xx):: w
if (w%u/=1)print *,101
end

