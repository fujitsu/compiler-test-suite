integer::a
integer,target::b =20
integer,pointer::ptr
data ptr /1*b/
data a /1/
if(associated(ptr).neqv..true.)print*,"101"
if(a.ne.1)print*,"102"
if(ptr.ne.20)print*,"103"
print*,"PASS"
end
