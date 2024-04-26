integer,target::d1=1
integer::arr(3)
integer::arr2(2)
integer,pointer::ptr1
integer,pointer::ptr2
integer,pointer::ptr3
integer,pointer::ptr4
data arr,ptr1,ptr2 /3*3,d1,d1/
data arr2, ptr3,ptr4 /2*2,d1,d1/

if(any(arr.ne.[3,3,3]))print*,"101"
if(any(arr2.ne.[2,2]))print*,"102"

if(associated(ptr1).neqv..true.)print*,"101",associated(ptr1)
if(associated(ptr2).neqv..true.)print*,"102",associated(ptr2)
if(associated(ptr3).neqv..true.)print*,"103",associated(ptr3)
if(associated(ptr4).neqv..true.)print*,"104",associated(ptr4)

if(associated(ptr1))then
if(ptr1.ne.1)print*,"105"
endif
if(associated(ptr2))then
if(ptr2.ne.1)print*,"106"
endif
if(associated(ptr3))then
if(ptr3.ne.1)print*,"107"
endif
if(associated(ptr4))then
if(ptr4.ne.1)print*,"108"
endif
print*,"PASS"
End 
