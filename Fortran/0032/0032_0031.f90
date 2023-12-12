module m0
integer,target  :: tar1=2
end
module mm
use m0,only:tar2=>tar1
end
module m
use mm,only:tar1=>tar2
private :: tar1

type ty1
   integer,pointer :: ptr1=>tar1
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
