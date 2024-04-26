use mod
call sub()
print *,'pass'
end
module mod
contains
subroutine t()
entry t2()
end subroutine
subroutine sub()
call s2( t2 )
end subroutine
end

subroutine s2(e)
use mod
procedure(t2) :: e
call e()
end
subroutine t()
end subroutine
