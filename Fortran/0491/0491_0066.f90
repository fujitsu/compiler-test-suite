module z0
pointer (base,k)
end
module w
use z0
private base
integer,private::t=1
contains
subroutine s
base=loc(t)
end 
end module

use w
call s
if (k/=1) print *,101
print*,"pass"
end
