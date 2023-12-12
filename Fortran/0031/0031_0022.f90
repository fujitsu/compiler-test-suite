module m0
integer,target  :: tar1
end
module mm
use m0
end
module mmm
use mm
end
module m
use mmm
private :: tar1
type ty1
   integer,pointer :: ptr1=>tar1
end type
contains
subroutine ss(obj)
type(ty1)::obj
tar1=2
end
end module

use m
type(ty1)::obj1
call ss(obj1)
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print *,'OK'
end


