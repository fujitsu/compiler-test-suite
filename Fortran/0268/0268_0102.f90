character(len=2),pointer::ptr(:)
character(len=2),pointer::ptr2(:)
character(kind=1,len=3),target::t1(3)=["abc","efg","xyz"]
ptr=>t1(1:3:2)(1:2)
data ptr2 /t1(1:3:2)(1:2)/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(any(ptr2.ne.["ab","xy"]))print*,"103"
if(any(ptr.ne.["ab","xy"]))print*,"105"
print*,"PASS"
end
