module m1
interface
 subroutine t1
 end subroutine
end interface
contains
subroutine s1(t)
procedure(t1)::t
call t
end subroutine
end
use m1
call s1(t1 )
print *,'pass'
end

subroutine t1
end subroutine
