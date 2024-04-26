module mod1
contains
subroutine sub(dmy)
    integer :: dmy
    dmy = 1
end
end module

use mod1
integer :: yy = 0
call sub(yy)
if(yy /= 1) print *,101
print *,"Pass"
end
