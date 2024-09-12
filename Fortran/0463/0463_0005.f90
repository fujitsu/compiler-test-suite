module mod
integer::ia=100
integer::x=100
contains
 subroutine sub
   ptr=loc(x)
 end subroutine
end

use mod,only:iaa=>ia
use mod
ia=5
call sub
if (iaa.ne.100) print *,'err'
if (ia.ne.5) print *,'err'
print *,'pass'
end
