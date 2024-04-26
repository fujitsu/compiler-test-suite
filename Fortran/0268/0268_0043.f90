integer,pointer::ptr
integer::a(2,-1)
integer,target::t1 =20
data a,ptr /t1/
if(associated(ptr).neqv..true.)print*,"101"
if(ptr.ne.20)print*,"102"
print*,"PASS"
end
