module m
data i/1/
contains
subroutine sub()
i=1
end subroutine
end module

use m
call sub()
print *,'pass'
end
