type ty
real,pointer::ptr(:)
real,pointer::ptr2
end type

complex,target::trg(5) = [(1.0,2.0),(1.0,2.0),(5.0,2.0),(1.0,2.0),(1.0,2.0)]
type(ty)::obj1(2)
type(ty)::obj2 = ty(trg(1:3)%re,trg(1)%im)
data obj1 /ty(trg(1:3)%re,trg(1)%im),ty(trg(1:3)%re,trg(1)%im)/
if(any(obj1(1)%ptr.ne.[1.0,1.0,5.0]))print*,"101"
if(obj1(1)%ptr2.ne.2.0)print*,"102"
if(any(obj2%ptr.ne.[1.0,1.0,5.0]))print*,"103"
if(obj2%ptr2.ne.2.0)print*,"104"
print *,"PASS"
end
