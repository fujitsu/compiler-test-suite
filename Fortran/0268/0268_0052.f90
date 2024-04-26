character(len=2)::arr(3)
integer,target::t1
integer,pointer::ptr
t1=20
data arr(1:3:1)(1:2),ptr /'ab','de','xy',t1/
if(arr(1).ne."ab")print*,"101",arr(1)
if(associated(ptr).neqv..true.)print*,"102"
print*,"PASS"
End 
