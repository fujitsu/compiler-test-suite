module m
integer :: tar1_array(10,10,10,10,4)!
integer,target,private  :: tar1(10,10,10,10,4)!
data tar1(10,10,10,10,4) /2/
type ty1
   integer,pointer :: ptr1=>tar1(10,10,10,10,4)
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
