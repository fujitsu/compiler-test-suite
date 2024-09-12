integer,parameter::rept = 5
integer::arr(7)
integer,pointer::ptr
integer,target::t1 =30
data arr,ptr /rept*5,12,11,t1/
if(any(arr.ne.[5,5,5,5,5,12,11]))print*,"101"
if(.not.associated(ptr))print*,"103"
print*,"PASS"
end
