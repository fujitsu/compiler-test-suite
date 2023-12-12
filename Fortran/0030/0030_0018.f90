module m
complex :: tar1_array(10,4)!
complex,target  :: tar1(10,4)!
data tar1(10,4) /(2,3)/
end
module mm
use m
complex :: tar2_array(10,4)!
complex,target  :: tar2(10,4)!
data tar2(10,4) /(2,3)/
end
module mmm
use mm
private:: tar1,tar2,tar3,tar3_array,tar2_array
complex :: tar3_array(10,4)!
complex,target  :: tar3(10,4)!
data tar3(10,4) /(2,3)/
type ty1
   real   ,pointer :: ptr1=>tar1(10,4)%im
   real   ,pointer :: ptr2=>tar1(10,4)%re
   real   ,pointer :: ptr11=>tar2(10,4)%im
   real   ,pointer :: ptr12=>tar2(10,4)%re
   real   ,pointer :: ptr21=>tar3(10,4)%im
   real   ,pointer :: ptr22=>tar3(10,4)%re
end type
end module

subroutine sss
use mmm
type(ty1)::obj1
if(obj1%ptr1 .ne. 3) print *,'ng-1',obj1%ptr1
if(obj1%ptr2 .ne. 2) print *,'ng-2',obj1%ptr2
if(obj1%ptr11 .ne. 3) print *,'ng-1'
if(obj1%ptr12 .ne. 2) print *,'ng-2'
if(obj1%ptr21 .ne. 3) print *,'ng-1'
if(obj1%ptr22 .ne. 2) print *,'ng-2'
end
call sss
print *,'OK'
end
