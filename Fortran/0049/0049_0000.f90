call s1()
contains
subroutine s1()
character,target,save::t1="a"
character,pointer::ptr=>t1
character,pointer::ptr2
integer,pointer::ptr3
integer,target,save::w=2
data  ptr3,ptr2 /w,t1/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"101"
if(associated(ptr3).neqv..true.)print*,"101"
print*,"PASS"
end
end
