module m1
contains
subroutine t1
end subroutine
subroutine s1(t)
procedure(t1)::t
call t
end subroutine
subroutine s2(t)
procedure(t1),pointer::t
if (associated(t)) call t
end subroutine
end
use m1
procedure(t1),pointer::tt2
tt2=>t1
call s1(t1 )
call s1(tt2 )
call s2(tt2 )
call s2(null() )
print *,'pass'
end
