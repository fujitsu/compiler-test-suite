module m1
 type x
  integer::x1
  integer,allocatable::x2(:)
end type
contains
recursive subroutine s1
  type(x):: a
  if (allocated(a%x2)) print *,101
end subroutine
end
use m1
call s1
print *,'pass'
end
