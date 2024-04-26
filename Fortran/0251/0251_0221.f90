module m1
integer,save::i=0
end module

use m1

interface 
subroutine sub1
end subroutine

subroutine sub2
end subroutine
end interface

procedure(sub1):: d1
call d1
if(i/=2) print*,103,i
call sub(sub2)

contains

subroutine sub(d2)
procedure(sub2)::d2
block
procedure(sub2):: d2
call d2
if(i/=4) print*,101,i
end block
call d2
if(i/=4) print*,102,i
end subroutine
end 

subroutine d1
use m1
print*,"In sub1"
i=2
end subroutine

subroutine sub2
use m1
print*,"In sub2"
i=4
end subroutine

subroutine d2
use m1
print*,"In block d3"
i=4
end subroutine
