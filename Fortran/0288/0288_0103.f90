module mod
 integer,parameter::i=1
end module

use mod
interface
 subroutine sub(k)
   import::i
   integer(i)::k
 end subroutine
end interface

call sub(1_1)
end

subroutine sub(k)
use mod
integer(i)::k
!
if(i /= k) print *,'fail'
print *,'pass'
end
