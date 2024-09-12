module m1
type x
  integer,allocatable::z
end type
type,extends(x)::x1
  integer::y
end type
type(x1)          ::v1
contains
subroutine s1
v1=x1(null(),1     )
if (allocated(v1%x%z))print *,101
if (allocated(v1%z))print *,102
end subroutine
end
use m1
call s1
print *,'pass'
end
  
