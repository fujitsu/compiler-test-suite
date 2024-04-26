use mod
call sub()
print *,'pass'
end
module mmm
contains
subroutine t()
entry t3()
end subroutine
end
module mod
contains
subroutine sub()
use mmm
call s2( t )
call s2( t3 )
end subroutine
end

subroutine s2(e)
use mmm
procedure(t) :: e
call e()
end
subroutine t()
end subroutine
