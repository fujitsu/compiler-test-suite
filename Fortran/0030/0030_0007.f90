module m
complex :: tar1_array(10,4)!
complex,target,private  :: tar1(10,4)!
data tar1(10,4) /(2,3)/
type ty1
   real   ,pointer :: ptr1=>tar1(10,4)%im
   real   ,pointer :: ptr2=>tar1(10,4)%re
   complex,pointer :: ptr3=>tar1(10,4)
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 3) print *,'ng-1',obj1%ptr1
if(obj1%ptr2 .ne. 2) print *,'ng-2',obj1%ptr2
if(obj1%ptr3 .ne. (2,3)) print *,'ng-3',obj1%ptr3
print *,'OK'
end
