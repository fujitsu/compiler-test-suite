module m0
complex,target  :: tar1=(2.0,2.0)
end
module mm
use m0,only:tar2=>tar1
end
module mmm
use mm
end
module m
use mm,only:tar3=>tar2
use mm,only:tar1=>tar2
private :: tar1

type ty1
   real   ,pointer :: ptr1=>tar1%IM
end type

type tt
  type(ty1):: aaa=ty1(tar3%IM)
end type

end module

use m
type(ty1)::obj1

if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
