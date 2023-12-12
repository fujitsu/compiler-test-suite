module m1
complex,target  :: tar1(10,4)!
data tar1(10,4) /(2,3)/
end
module m2
complex,target  :: tar2(10,4)!
data tar2(10,4) /(2,3)/
end
module m3
complex,target  :: tar3(10,4)!
data tar3(10,4) /(2,3)/
end
module m4
complex,target  :: tar4(10,4)!
data tar4(10,4) /(2,3)/
end
module m5
use m1
use m2
use m3
use m4
end
module m6
use m5
private:: tar1,tar2,tar3

type ty1
   real   ,pointer :: ptr1=>tar1(10,4)%im
   real   ,pointer :: ptr2=>tar1(10,4)%re
   complex,pointer :: ptr3=>tar1(10,4)
   real   ,pointer :: ptr11=>tar2(10,4)%im
   real   ,pointer :: ptr12=>tar2(10,4)%re
   complex,pointer :: ptr13=>tar2(10,4)
   real   ,pointer :: ptr21=>tar3(10,4)%im
   real   ,pointer :: ptr22=>tar3(10,4)%re
   complex,pointer :: ptr23=>tar3(10,4)
   real   ,pointer :: ptr31=>tar4(10,4)%im
   real   ,pointer :: ptr32=>tar4(10,4)%re
   complex,pointer :: ptr33=>tar4(10,4)
end type
end module

use m6,only:ty1
type(ty1)::obj1
if(obj1%ptr1 .ne. 3) print *,'ng-1'
if(obj1%ptr2 .ne. 2) print *,'ng-2'
if(obj1%ptr3 .ne. (2,3)) print *,'ng-3'
if(obj1%ptr11 .ne. 3) print *,'ng-1'
if(obj1%ptr12 .ne. 2) print *,'ng-2'
if(obj1%ptr13 .ne. (2,3)) print *,'ng-3'
if(obj1%ptr21 .ne. 3) print *,'ng-1'
if(obj1%ptr22 .ne. 2) print *,'ng-2'
if(obj1%ptr23 .ne. (2,3)) print *,'ng-3'
if(obj1%ptr31 .ne. 3) print *,'ng-1'
if(obj1%ptr32 .ne. 2) print *,'ng-2'
if(obj1%ptr33 .ne. (2,3)) print *,'ng-3'
print *,'OK'
end
