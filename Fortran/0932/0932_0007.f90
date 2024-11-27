module m1
integer :: val= 0
procedure(s), pointer, protected :: p
interface
subroutine s
end subroutine 
end interface
contains
subroutine ss
p=>sub1
end subroutine
subroutine sub1
val=val+5
end subroutine
subroutine sub2(dmy)
procedure(s),pointer:: dmy
        dmy=>sub3
end subroutine
subroutine sub3
val=val+20
end subroutine
end module

module m2
use m1
procedure(), pointer, protected:: prc
end module

use m2
call ss
call p
if(val/=5) print *,101,val
call sub2(prc)
call prc
if(val/=25) print *,102,val
print *, "Pass"
end
