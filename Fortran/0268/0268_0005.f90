integer::a
integer,target::b =20
integer,pointer::ptr
integer,pointer::ptr2
integer,pointer::ptr3
integer,pointer::ptr4
data ptr,ptr2 /0*NULL(),2*NULL(),0*NULL()/
data ptr3,ptr4 /2*b/
data a /0*1,21/
if(associated(ptr).neqv..false.)print*,"101"
if(a.ne.21)print*,"102"
if(ptr3.ne.20)print*,"103"
if(ptr4.ne.20)print*,"103"
print*,"PASS"
end
