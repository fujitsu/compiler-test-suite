integer,pointer::ptr
integer,pointer::ptr2
integer,pointer::ptr3
integer,pointer::ptr4
integer,target::t1=30
data ptr,ptr2,ptr3,ptr4 /4*t1,0*NULL()/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr3).neqv..true.)print*,"103"
if(associated(ptr4).neqv..true.)print*,"104"
if(ptr.ne.30)print*,"105"
if(ptr2.ne.30)print*,"106"
if(ptr3.ne.30)print*,"107"
if(ptr4.ne.30)print*,"108"
print*,"PASS"
end
