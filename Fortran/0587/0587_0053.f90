module x
integer,target::tt1 =30
end
module n
use x, tt2=>tt1
type ty2
 integer:: t =  119
end type
type(ty2),target::t1
end module

module m1
use n,t2=>t1,tt3=>tt2
TYPE ty
  integer,pointer :: ptr3=>t2%t
  integer,pointer :: ptr4=>tt3
end type
end

use m1
type(ty)::obj
if(obj%ptr3.ne.119)print*,"101"
if(obj%ptr4.ne.30)print*,"102"
print*,"PASS"
end
      

