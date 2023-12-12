module mxx
integer,target  :: tar1=2
integer,target  :: tar2=21
end
module my
use mxx
integer,target  :: tar3=2
integer,target  :: tar4=21
end
module m
use my
private :: tar3
type ty1
   integer,pointer :: ptr1=>tar1
   integer,pointer :: ptr2=>tar3
end type
contains
subroutine ss
type(ty1)::o
if (tar1/=2) print *,201
if (tar2/=21) print *,202
if (o%ptr1/=2) print *,203
if (tar3/=2) print *,211
if (tar4/=21) print *,212
if (o%ptr2/=2) print *,203
end
end module

use m,only:ty1,ss
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
if(obj1%ptr2 .ne. 2) print *,'ngx'
call ss
print *,'OK'
end
