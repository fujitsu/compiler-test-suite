character(len=2),pointer::ptr
character(len=2),pointer::ptr2
character(len=3),target::t1="abc"
ptr=>t1(1:2)
data ptr2 /t1(1:2)/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(ptr.ne."ab")print*,"103"
if(ptr2.ne."ab")print*,"104"
print*,"PASS"
end
