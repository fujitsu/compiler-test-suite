module mz
integer,target  :: tar1=2
integer,target  :: tar2=21
integer,target  :: tar3
end
module mw
use mz
integer,target  :: tar11=2
integer,target  :: tar12=21
integer,target  :: tar13
end
module mq
use mw
integer,target  :: tar21=2
integer,target  :: tar22=21
integer,target  :: tar23
end
module m
use mq
private :: tar1,tar2,tar11,tar12,tar21,tar22
type ty1
   integer,pointer :: ptr1=>tar1
   integer,pointer :: ptr2=>tar11
   integer,pointer :: ptr3=>tar21
end type
contains
subroutine ss
type(ty1)::o
if (tar1/=2) print *,201
if (tar2/=21) print *,202
if (o%ptr1/=2) print *,203
if (tar11/=2) print *,201
if (tar12/=21) print *,202
if (o%ptr2/=2) print *,203
if (tar21/=2) print *,201
if (tar22/=21) print *,202
if (o%ptr3/=2) print *,203
tar3=3
tar13=3
tar23=3
end
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
if(obj1%ptr2 .ne. 2) print *,'ng1'
if(obj1%ptr3 .ne. 2) print *,'ng2'
call ss
if (tar3/=3)print *,301
if (tar13/=3)print *,301
if (tar23/=3)print *,301
print *,'OK'
end
