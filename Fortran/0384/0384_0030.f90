module mod
integer ,allocatable :: a(:)
contains
subroutine sub()
allocate(a(10))
end subroutine
end

use mod,only :sub
call sub()
print *,'pass'
end
