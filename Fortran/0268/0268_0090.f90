integer::arr(3:2)
integer::arr2(-1:3)
integer::arr3(-1:3)
integer::arr4(-1:3)
integer,pointer::ptr
integer,pointer::ptr1
integer,pointer::ptr2
integer,target::t1=30
data arr,ptr,arr2 /0*3,t1,1,2,3,4,5/
data ptr1,arr3 /0*3,t1,1,2,3,4,5/
data arr,ptr2,arr4 /t1,1,2,3,4,5/
if(.not.associated(ptr))print*,"101",associated(ptr)
if(.not.associated(ptr1))print*,"102",associated(ptr)
if(.not.associated(ptr2))print*,"103",associated(ptr)

if(any(arr2.ne.[1,2,3,4,5]))print*,"104"
if(any(arr3.ne.[1,2,3,4,5]))print*,"105"
if(any(arr4.ne.[1,2,3,4,5]))print*,"106"
print*,"PASS"
end
