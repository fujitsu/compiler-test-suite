module m0
integer,target  :: tar1=2
integer,target  :: tar2=21
integer,target  :: tar3
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
tar3=3
end
end module

use m,only:ty1,ss,tar3
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
call ss
if (tar3/=3)print *,301
print *,'OK'
end
