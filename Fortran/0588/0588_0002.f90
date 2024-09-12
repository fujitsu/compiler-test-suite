type ty
integer,pointer::ptr
end type

integer,target::trg=11

type(ty)::obj(4)

data obj(2) /ty(NULL())/
data obj(1) /ty(trg)/
data obj(3),obj(4) /2*ty(trg)/
if(obj(1)%ptr.ne.11)print*,"101"
if(associated(obj(2)%ptr).neqv..false.)print*,"102"
if(obj(4)%ptr.ne.11)print*,"102"
if(obj(3)%ptr.ne.11)print*,"103"
if(associated(obj(2)%ptr).neqv..false.)print*,"104"
print*,"pass"
end
