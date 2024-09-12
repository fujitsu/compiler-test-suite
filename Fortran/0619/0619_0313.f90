module m1
type x0
  integer,allocatable::xx
end type
type(x0)          ::v1=x0(null())
contains
subroutine s1
if (allocated(v1%xx))print *,302
end subroutine
end
use m1
call s1
print *,'pass'
end
  
