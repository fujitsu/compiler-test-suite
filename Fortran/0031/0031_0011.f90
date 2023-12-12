module m0
integer,target  :: tar1=2
integer,target  :: tar2=21
end
module m
use m0
private :: tar1
type ty1
   integer,pointer :: ptr1=>tar1
end type
contains
subroutine ss
type(ty1)::o
if (tar1/=2) print *,201
if (tar2/=21) print *,202
if (o%ptr1/=2) print *,203
end
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
call ss
print *,'OK'
end
