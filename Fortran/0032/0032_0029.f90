module m0
integer,target  :: tar1=2
end
module m
use m0,only:tar2=>tar1
private :: tar2
type ty1
   integer,pointer :: ptr1=>tar2
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
