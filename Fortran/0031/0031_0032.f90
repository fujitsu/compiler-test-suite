module mz
integer,target  :: tar1(5,4)/19*0,2/
end
module m
use mz
integer ,target:: tar1_array(5,4)/19*0,4/
integer ,target:: tar2_array(5,4)/19*0,3/
private  :: tar1,tar2_array
type ty1
   integer,pointer :: ptr1=>tar1(5,4)
   integer,pointer :: ptr2=>tar2_array(5,4)
   integer,pointer :: ptr3=>tar1_array(5,4)
end type
end module

use m,only:ty1
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
if(obj1%ptr2 .ne. 3) print *,'ng3'
if(obj1%ptr3 .ne. 4) print *,'ng4'
print *,'OK'
end
