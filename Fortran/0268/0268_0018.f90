integer,target::t1(5)=[1,2,3,4,5]
integer,pointer::ptr(:) 
integer,pointer::ptr2(:)
integer::k
data k,ptr,ptr2 /12,t1(1:5:2),NULL()/
if(associated(ptr2))print*,"101"
if(any(ptr.ne.[1,3,5]))print*,"102"
print*,"PASS"
end
