module z0
integer,target  :: tar1=2
end
module w
use z0
public :: tar1
type ty1
   integer,pointer :: ptr1=>tar1
end type
end module

use w
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
