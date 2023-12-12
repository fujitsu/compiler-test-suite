module mz
integer,target  ::t1=2
integer,target  ::t2=21
integer,target  ::t3
end
module mw
integer,target  ::t11=2
integer,target  ::t12=21
integer,target  ::t13
end
module mq
integer,target  ::t21=2
integer,target  ::t22=21
integer,target  ::t23
end
module m
use mz,tar1=>t1,tar2=>t2,tar3=>t3
use mw,tar11=>t11,tar12=>t12,tar13=>t13
use mq,tar21=>t21,tar22=>t22,tar23=>t23
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

use m,only:ty1,ss,tar3,tar13,tar23
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
