module mod
data i /1/
contains
subroutine sub()
i=1
end subroutine
end

use mod
call sub()
print *,'pass'
end

