integer::arr(5)
integer::arr2(5)
integer,target::t1
integer,pointer::ptr
integer::num1
integer::num2
integer,target::t2
integer,pointer::ptr2
t1=20
t2=30
data num1,ptr2,arr,ptr,arr2,num2 /10,t1,1,2,3,4,5,NULL(),6,7,8,12,13,14/
if(any(arr.ne.[1,2,3,4,5]))print*,"101",arr
if(any(arr2.ne.[6,7,8,12,13]))print*,"109",arr
if(t1.ne.20)print*,"102"
if(t2.ne.30)print*,"103"
if(num1.ne.10)print*,"104"
if(num2.ne.14)print*,"105"
if(associated(ptr2).neqv..true.)print*,"101",associated(ptr2)
if(associated(ptr).neqv..false.)print*,"102",associated(ptr)
print*,"PASS"
print*,"PASS"
End 


