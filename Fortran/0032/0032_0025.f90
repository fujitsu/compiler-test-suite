module m0
integer,target  :: tar1=2
end
module m
use m0
private :: tar1
type ty1
   integer,pointer :: ptr1!=>tar1
end type
contains
function ifun() result(ii)
type (ty1) :: ii!=ty1(tar1)

ii=ty1(tar1)
end function
end module

use m
type(ty1)::obj1
obj1 = ifun()
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
