integer,parameter::m=1
type ty
 integer,pointer::ptr
end type
integer,target::trg=11
type(ty)::obj(2) = [(ty(trg),l=1,2,m)]
if(associated(obj(1)%ptr).neqv..true.)print*,"102"
if(obj(1)%ptr.ne.11)print*,"101"
if(associated(obj(2)%ptr).neqv..true.)print*,"102"
if(obj(2)%ptr.ne.11)print*,"101"
print*,"PASS"
end
