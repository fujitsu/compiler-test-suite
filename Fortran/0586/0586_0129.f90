character(kind=4,len=2),pointer::ptr(:)
character(kind=4,len=2),pointer::ptr2(:)
character(kind=4,len=3),target::t1(3)=["abc","efg","xyz"]
ptr=>t1(1:3:2)(1:2)
data ptr2 /t1(1:3:2)(1:2)/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
print*,"PASS"
end
