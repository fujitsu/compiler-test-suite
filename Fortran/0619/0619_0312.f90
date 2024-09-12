module m1
type x0
  integer,allocatable::xx
end type
type,extends(x0)::x1
  integer::y
end type
type(x1)          ::v0=x1(null(),3)
type(x0)          ::v1=x0(null())
contains
recursive subroutine s1
if (allocated(v0%x0%xx))print *,300
if (allocated(v0%xx))print *,301
if (allocated(v1%xx))print *,302
end subroutine
end
use m1
call s1
call s1
call s1
call s1
call s1
print *,'pass'
end
  
