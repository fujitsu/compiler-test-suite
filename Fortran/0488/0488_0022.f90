module m1
contains
subroutine s2(a1,a2)
integer,allocatable::a1,a2(:)
if (allocated(a1)) print *,101
if (allocated(a2)) print *,102
end subroutine
subroutine s1
call s2(null(),null())
end subroutine
end
use m1
call s1
print *,'pass'
end
