module mod
integer,allocatable:: i(:)
integer :: k
end

call sub()
print *,'pass'
end

subroutine sub()
use mod,only : k
end
