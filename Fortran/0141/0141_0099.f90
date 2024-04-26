module m1
type x
  integer,allocatable::x(:)
end type
type(x):: v
contains
subroutine s1
v%x(1)=1
if (v%x(1)/=1) print *,1
end subroutine
subroutine s2
allocate(v%x(2))
end subroutine
end
use m1
call s2
call s1
print *,'pass'
end

