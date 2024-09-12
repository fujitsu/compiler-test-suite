Module m1
contains
subroutine ss
integer,target:: t=1
call s1(t)
end subroutine

subroutine s1(p)
integer,pointer,intent(in):: p
if (p/=1) print *,101
end subroutine
end

use m1
call ss
print *,'pass'
end
