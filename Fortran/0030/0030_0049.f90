module m0
integer,target  :: t1=2
integer,target  :: t2=21
integer,target  :: t3
end
module m
use m0,tar1=>t1,tar2=>t2,tar3=>t3
private :: tar1
type ty1
   integer,pointer :: ptr1=>tar1
end type
interface
module subroutine xx
end
end interface
contains
subroutine ss
type(ty1)::o
if (tar1/=2) print *,201
if (tar2/=21) print *,202
if (o%ptr1/=2) print *,203
tar3=3
end
end module
submodule (m) smod
type(ty1)::obj1
contains
module subroutine xx
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
end
end

use m,only:ty1,ss,tar3,xx
type(ty1)::obj1
call xx
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
call ss
if (tar3/=3)print *,301
print *,'OK'
end
