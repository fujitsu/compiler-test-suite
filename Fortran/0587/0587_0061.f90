module m
integer,target::t1 =30
type ty
 integer,pointer::ptr=>t1
end type
end module
module m2
use m
type ty2
 type(ty)::obj3
end type
end
module m3
use m2
type(ty2)::obj2
end
use m3
if(obj2%obj3%ptr.ne.30)print*,"111"
print*,"PASS"
end
