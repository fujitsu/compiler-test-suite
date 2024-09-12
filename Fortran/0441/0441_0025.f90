module m1
contains
subroutine s1(k)
external :: k
call k
end subroutine
subroutine s2(k)
external :: k
pointer::k
if (associated(k)) call k
end subroutine
end
use m1
external:: t1
external:: t2
procedure(),pointer::tt2
tt2=>t2
call s1(t1 )
call s1(tt2 )
call s2(tt2 )
call s2(null() )
print *,'pass'
end

subroutine t1
end
subroutine t2
end
