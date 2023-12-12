module m0
real,target  :: tar1=2.0
end
module mm
use m0,only:tar2=>tar1
end
module m
use mm,only:tar3=>tar2
use mm,only:tar1=>tar2
private :: tar1
type ty1
   real   ,pointer :: ptr1=> tar1
end type

end module

module mmm
use m
type(ty1):: aaa
end

use mmm
if (aaa%ptr1/=2) print *,303
print *,'OK'
end
