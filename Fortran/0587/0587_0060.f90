module m
type ty
 integer::i=20
end type
type(ty),target::obj
end module
module m2
use m
type ty2
 integer,pointer::ptr3=>obj%i
end type
end
use m2
type(ty2)::obj2
if(obj2%ptr3.ne.20)print*,"101"
obj2%ptr3 =40
if(obj%i.ne.40)print*,"102",obj%i
print*,"PASS"
end
