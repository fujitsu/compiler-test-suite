module m0
type ty0
 SEQUENCE
 integer  :: tar1
end type
target   :: tar
type(ty0),private  :: tar=ty0(2)
common /com/ tar
private :: com
type(ty0),pointer  :: tar_p=>tar
end 
module m
use m0
type ty1
   integer,pointer :: ptr1=>NULL()
end type
end module

use m,only:ty11=>ty1
use m
type(ty11)::obj1
obj1=ty11(tar_p%tar1)
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
