module m0
integer,target  :: tar1=2
end

module m
use m0
private :: tar1
type ty1
   integer,pointer :: ptr1
end type
type(ty1)::obj1
contains
subroutine sub
obj1%ptr1=> tar1
end subroutine
end module

use m
call sub
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
