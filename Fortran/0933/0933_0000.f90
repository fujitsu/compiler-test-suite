module m1
integer :: val= 0
procedure(), pointer, protected :: pd
interface
  subroutine sub
  end subroutine
end interface
contains
subroutine ss
  pd=>sub1
end subroutine
subroutine sub1
  val=val+5
end subroutine
subroutine sub2
  val=val+2
end subroutine
subroutine sub3(p)
  procedure(sub),pointer, intent(inout):: p
  p=>sub2
end subroutine
end module

module m2
use m1
procedure(), pointer, protected:: prc
end module

use m2
call ss
call pd
if(val/=5) print *,101,val
call sub3(prc)
call prc
if(val/=7) print *,102,val
print *, "Pass"
end
