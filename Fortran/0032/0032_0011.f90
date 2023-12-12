module m0
type ty0
 integer  :: tar1!=2
end type
end 
module m
use m0
target   :: tar
type(ty0),private  :: tar
data tar /ty0(2)/
type ty1
   integer,pointer :: ptr1=>tar%tar1
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
