module m
type ty
 real::k =30
 real::i=20
end type
type(ty),target::obj
end module
module m2
use m
type ty2
 real,pointer::ptr4=>obj%i
end type
end
module m3
use m2
end

use m3
type(ty2)::obj2
if(obj2%ptr4.ne.20)print*,"102",obj2%ptr4
print*,"PASS"
end
