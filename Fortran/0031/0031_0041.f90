module m0
integer,target  :: tar1=2
end

module m
use m0,only:t=>tar1
private :: t
type ty1
   integer,pointer :: ptr1=>t
end type
end module

use m,only:ty=>ty1
type(ty)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print *,'OK'
end
