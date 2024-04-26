integer::arr(5)
integer,target::t1=20
integer,pointer::ptr
t1=20
data arr(1:5:1),ptr /1,2,3,4,5,t1/
if(any(arr.ne.[1,2,3,4,5]))print*,"101"
if(t1.ne.20)print*,"102"
if(associated(ptr).neqv..true.)print*,"102"
if(associated(ptr))then
if(ptr.ne.20)print*,"103"
endif
print*,"PASS"
End 
