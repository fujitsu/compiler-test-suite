integer::arr(5)
integer,target::t1
integer,pointer::ptr
integer,pointer::ptr2
integer,parameter::k=2
t1=20
data ptr2,arr(1:5:k),ptr /NULL(),3*1,t1/
if(any(arr.ne.[1,0,1,0,1]))print*,"101",arr
if(t1.ne.20)print*,"102"
if(associated(ptr).neqv..true.)print*,"102"
if(associated(ptr2).neqv..false.)print*,"103",associated(ptr2)
print*,"PASS"
End 
