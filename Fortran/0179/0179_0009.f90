use mod
call sub()
print *,'pass'
end
module mod
contains
subroutine t()
end subroutine
subroutine sub()
call s2( t )
end subroutine
end

subroutine s2(e)
use mod
procedure(t) :: e
call e()
end
subroutine t()
end subroutine
