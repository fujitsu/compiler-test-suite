character(len=0)::ch
character(len=0)::ch2(2)
integer,pointer::ptr
integer,pointer::ptr2
integer,target::t1=30
data ch,ptr /'a',t1/
data ch2,ptr2 /2*'a',t1/
if(.not.associated(ptr))print*,"101",associated(ptr)
if(.not.associated(ptr2))print*,"102",associated(ptr2)
print*,"PASS"
end
