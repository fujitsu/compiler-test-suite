module m1
contains
subroutine s(x,y)
integer,allocatable::x,y(:)
if (allocated(x)) print *,101
if (allocated(y)) print *,102
end subroutine
subroutine t(x,y)
integer,pointer    ::x,y(:)
if (associated(x)) print *,201
if (associated(y)) print *,202
end subroutine
end 
use m1
call s(null(),null())
call t(null(),null())
print *,'pass'
end
