integer,parameter::m=1
type ty
 integer,pointer::ptr
end type
type ty2
 type(ty)::obj1(2)
end type
integer,target::trg=11
type(ty)::obj(2) = [(ty(trg),l=1,2,m)]

type(ty2)::obj3 = ty2([(ty(trg),l=1,3,m+1)])
type(ty2)::obj4 
data obj4  /ty2([(ty(trg),l=1,1,m), (ty(trg),l=1,1,m)])/
if(associated(obj(1)%ptr).neqv..true.)print*,"201"
if(obj(1)%ptr.ne.11)print*,"101"
if(associated(obj(2)%ptr).neqv..true.)print*,"102"
if(obj(2)%ptr.ne.11)print*,"101"

if(associated(obj3%obj1(1)%ptr).neqv..true.)print*,"103"
if(obj3%obj1(1)%ptr.ne.11)print*,"103",obj3%obj1(1)%ptr
if(associated(obj4%obj1(1)%ptr).neqv..true.)print*,"104"
if(obj4%obj1(1)%ptr.ne.11)print*,"103",obj3%obj1(1)%ptr

print*,"PASS"
end
