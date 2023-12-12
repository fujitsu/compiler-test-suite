character,pointer::ptr(:)
character,target,save::t1(5) = 'abcdef'
integer::a,b
data a,ptr,b /1,t1(1:5:1),2/
if(associated(ptr).neqv..true.)print*,"101"
if(a.ne.1)print*,"103"
if(b.ne.2)print*,"104"
print*,"PASS"
end
