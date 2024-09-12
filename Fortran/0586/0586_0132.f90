integer,pointer::ptr(:,:)
integer,target::t1(3,3) = reshape([1,2,3,4,5,6,7,8,9],[3,3])
integer::a,b,c
integer,parameter::k=1
data a,ptr,b,c /1,t1(k:3:k,k:3:k),2,3/
if(a.ne.1)print*,"101"
if(b.ne.2)print*,"102"
if(c.ne.3)print*,"103"
if(.not.associated(ptr))print*,"104"
if(k.ne.1)print*,"105"
print*,"PASS"
end

