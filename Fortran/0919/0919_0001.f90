common /x/ ptr
complex,target::t1 =(2,3)
real,pointer::ptr=>t1%re
real,pointer::ptr2=>t1%im
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
print*,"PASS"
end
