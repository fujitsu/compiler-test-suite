type ty
integer,pointer::ptr(:)
end type

integer,target::trg(5)=[1,2,3,4,5]
type(ty)::obj1(3)
data obj1 /ty(trg(1:3)),ty(trg(1:5)), ty(trg)/
if(any(obj1(1)%ptr.ne.[1,2,3]))print*,"101"
if(any(obj1(2)%ptr.ne.[1,2,3,4,5]))print*,"102"
if(any(obj1(3)%ptr.ne.[1,2,3,4,5]))print*,"103"
print*,"PASS"
end
