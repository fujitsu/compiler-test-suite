module mod
contains
subroutine sub()
end subroutine
end

use mod,sss=>sub
call sss()
print *,'pass'
end

