module m
integer,target::t1 =30
type ty
 integer,pointer::ptr=>t1
 integer::i=20
end type
type(ty),target::obj
end 
module m2
use m
type ty2
 integer,pointer::ptr3=>t1
 integer,pointer::ptr4=>obj%i
 type(ty)::obj3
end type
type(ty2)::obj2
end

use m2
if(obj2%ptr3.ne.30)print*,"102"
if(obj2%ptr4.ne.20)print*,"102"
if(obj2%obj3%ptr.ne.30)print*,"102"
print*,"PASS"
end
