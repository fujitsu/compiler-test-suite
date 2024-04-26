module m0
type ty0
 integer  :: tar1
end type
end 
module m
use m0,only:ty00=>ty0
target   :: tar
type(ty00),private  :: tar=ty00(2)
type ty1
   integer,pointer :: ptr1=>tar%tar1
end type
end module

use m
use m,only:ty11=>ty1
type(ty11)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
