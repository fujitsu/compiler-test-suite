integer::arr(3:2)
integer,pointer::ptr
integer,target::t1=30
data arr,ptr /t1/
if(.not.associated(ptr))print*,"101"
print*,"PASS"
end
