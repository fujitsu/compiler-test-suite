module mod
integer,allocatable:: i(:)
contains
subroutine sub1()
end subroutine
end

call sub()
print *,'pass'
end

subroutine sub()
use mod
call sub1()
end
