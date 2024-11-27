module mod
integer :: i[1:*]
contains
subroutine sub1_1()
save i
end subroutine
end

use mod
call sub1_1()
print *,'pass'
end
