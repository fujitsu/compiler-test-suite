integer,pointer::ptr1
character,pointer::ptr2
character,pointer::ptr3
integer::k,l
character,target,save::t1="a"
data k,ptr1,ptr2,l, ptr3 /10,NULL(), t1,20,t1/
if(ptr2.ne."a")print*,"101"
if(ptr3.ne."a")print*,"102"
if(associated(ptr1).neqv..false.)print*,"103"
if(k.ne.10)print*,"105"
if(l.ne.20)print*,"105"
print*,"PASS"
end
