integer*4::a
integer*2::b
integer*8::c
integer(kind=4),pointer::ptr
integer(kind=4),target::t1 = 2;
integer(kind=4),pointer::ptr2
integer*4,target::t2 = 2_2;
data a,b,c,ptr,ptr2 /1_2,12_4,8_2,t1,t2/
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"101"
if(a.ne.1)print*,"102"
if(b.ne.12)print*,"103"
if(c.ne.8)print*,"104"
if(ptr.ne.2)print*,"105"
print*,"PASS"
end
