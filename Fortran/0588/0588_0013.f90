module m
integer,target::t1 =30
integer,target::t2 =40
type ty
 integer,pointer::ptr
end type
type ty2
  integer,pointer::ptr2
  type(ty)::obj3
end type
type ty3
  type(ty2)::obj2 = ty2(t2,ty(t1))
end type 
end
use m
type(ty3)::obj4
if(obj4%obj2%obj3%ptr.ne.30)print*,"101"
if(obj4%obj2%ptr2.ne.40)print*,"102"
print*,"PASS"
end
