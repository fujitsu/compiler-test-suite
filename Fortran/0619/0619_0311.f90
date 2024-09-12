module m1
type x
  integer,allocatable::z
end type
type,extends(x)::x1
  integer::y
end type
type(x)          ::v1
contains
subroutine s1
allocate(v1%z)
v1%z=1
if (v1%z/=1)print *,101
end subroutine
end
use m1
call s1
print *,'pass'
end
  
