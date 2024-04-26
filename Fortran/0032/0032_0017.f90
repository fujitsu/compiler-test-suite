module m
complex,target,private  :: tar1

data tar1%re /2.0/
type ty1
   complex,pointer :: ptr1=>tar1
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
