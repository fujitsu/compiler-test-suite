integer::arr(5)
integer::arr2(5)
integer,target::t1
integer,pointer::ptr
integer,parameter::k=2
integer,parameter::k2=5
integer::num1
integer::num2
integer,target::t2
integer,pointer::ptr2

t1=20
t2=30
data num1,ptr2,arr(1:5:k),ptr, arr2(1:k2:k),num2 /10,t1,1,2,3,t2,6,7,8,12/
if(any(arr.ne.[1,0,2,0,3]))print*,"101",arr
if(any(arr2.ne.[6,0,7,0,8]))print*,"109",arr
if(t1.ne.20)print*,"102"
if(t2.ne.30)print*,"103"
if(num1.ne.10)print*,"104"
if(num2.ne.12)print*,"105"
if(associated(ptr).neqv..true.)print*,"102"
if(associated(ptr))then
if(ptr.ne.30)print*,"103"
endif
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr2))then
if(ptr2.ne.20)print*,"103"
endif
print*,"PASS"
End 


