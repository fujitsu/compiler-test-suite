module mod
contains
subroutine sub()
entry sub1()
end subroutine
end

use mod
call sub()
call sub1()
print *,'pass'
end
