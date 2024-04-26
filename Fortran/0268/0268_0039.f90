integer::arr(5)
integer,target::t1
integer,pointer::ptr
integer,parameter::k=2
t1=20
data arr(1:5:k),ptr /1,2,3,t1/
if(any(arr.ne.[1,0,2,0,3]))print*,"101",arr
if(t1.ne.20)print*,"102"
if(associated(ptr).neqv..true.)print*,"102"
if(associated(ptr))then
if(ptr.ne.20)print*,"103"
endif
print*,"PASS"
End 
