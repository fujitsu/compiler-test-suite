module m0
integer,target  :: tar1
end
module m
use m0,only:t=>tar1
private :: t
type ty1
   integer,pointer :: ptr1=>t
end type
contains
subroutine ss(obj)
type(ty1)::obj
t=2
end
end module

use m,only:t=>ty1,ss
type(t)::obj1
call ss(obj1)
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print *,'OK'
end


