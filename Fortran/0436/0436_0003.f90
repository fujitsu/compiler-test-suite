MODULE m1
type xx
integer::c
integer,allocatable:: u
end type
end
subroutine s1
use  m1
call ss(xx(2,1))
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
deallocate(w%u)
end

