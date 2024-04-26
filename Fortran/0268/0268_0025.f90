integer,pointer::ptr
integer::arr(5)
integer,target::t1=30
data arr ,ptr /0*5,5*5,t1/
if(any(arr.ne.[5,5,5,5,5]))print*,"101"
if(associated(ptr).neqv..true.)print*,"102"
if(ptr.ne.30)print*,"103"
print*,"PASS"
end
