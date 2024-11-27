module moda
integer :: i[1:*]
private :: i
end
module mod
use moda
contains
subroutine sub1_1()
save i
end subroutine
end

use mod
call sub1_1()
print *,'pass'
end
