integer::arr(3)
integer,pointer::ptr
integer,target::tar1=30
data arr,ptr / B'10', O'07',Z'A',tar1/
if(any(arr.ne.[2,7,10]))print*,"101"
if(associated(ptr).neqv..true.)print*,"103"
print*,"PASS"
end
