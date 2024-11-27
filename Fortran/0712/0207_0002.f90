module m0
integer,target  :: tar1=2
end

module m
use m0
private :: tar1
   integer,pointer :: ptr1=>tar1
end module

use m
if(ptr1 .ne. 2) print *,'ng-',ptr1
print*,"pass"
end
