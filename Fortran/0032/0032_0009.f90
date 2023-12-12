module m
type ty0
 integer,private  :: tar1=2
end type
target   :: tar
type(ty0)  :: tar
type ty1
   integer,pointer :: ptr1=>tar%tar1
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
