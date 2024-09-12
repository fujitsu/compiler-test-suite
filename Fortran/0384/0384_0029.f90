module mod
private :: i
contains
subroutine sub()
i=1
end subroutine
end

use mod
call sub()
print *,'pass'
end
