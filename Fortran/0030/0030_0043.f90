module m0
integer,target  :: t1=2
integer,target  :: t2=21
end
module m
use m0,only:tar1=>t1,tar2=>t2
private :: tar1
type ty
   integer,pointer :: ptr1=>tar1
end type
contains
subroutine ss
type(ty)::o
if (tar1/=2) print *,201
if (tar2/=21) print *,202
if (o%ptr1/=2) print *,203
end
end module

use m,only:ty1=>ty,ss
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
call ss
print *,'OK'
end
