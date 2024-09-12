integer,target::t1(5)=[1,2,3,4,5]
integer,pointer::ptr(:) =>t1(1:5:2)
integer,pointer::ptr2(:) =>NULL()
if(associated(ptr2))print*,"101"
if(ptr(1).ne.1)print*,"102",ptr
if(ptr(2).ne.3)print*,"102",ptr
if(ptr(3).ne.5)print*,"102",ptr
print*,"PASS"
end


