module m1
contains
subroutine t(x,y)
integer,pointer    ::x,y(:)
if (associated(x)) print *,201
if (associated(y)) print *,202
end subroutine
end 
use m1
call t(null(),null())
call s(null(),null())
print *,'pass'
contains
subroutine s(x,y)
integer,pointer    ::x,y(:)
if (associated(x)) print *,201
if (associated(y)) print *,202
end subroutine
end
