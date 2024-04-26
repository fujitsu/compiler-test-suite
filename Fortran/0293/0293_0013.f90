module m01
type a
 integer,allocatable::x(:)
end type
contains
subroutine s
type(a)::v61(2)
allocate(v61(2)%x(2))
end subroutine
end
use m01
call s
print *,'pass'
end
