character(len=3)::arr(3)
integer,target::t1
integer,pointer::ptr
integer,pointer::ptr2
t1=20
data arr(1:3:1),ptr,ptr2 /'abc','def','xyz',t1,NULL()/
if(any(arr.ne.['abc','def','xyz']))print*,"101"
if(t1.ne.20)print*,"102"
if(associated(ptr).neqv..true.)print*,"103"
if(associated(ptr2).neqv..false.)print*,"104",associated(ptr2)
print*,"PASS"
End 


