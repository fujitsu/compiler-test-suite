module m
complex :: tar1_array(10,4)!
complex,target  :: tar1(10,4)!
data tar1(10,4) /(2,3)/
end
module mm
use m
end
module mmm
use mm

type ty1
   real   ,pointer :: ptr1=>tar1(10,4)%im
end type
end module
module mmmm
use mmm,only:ty1
end

use mmmm,only:ty1
type(ty1)::obj1
if(obj1%ptr1 .ne. 3) print *,'ng-',obj1%ptr1
print *,'OK'
end
