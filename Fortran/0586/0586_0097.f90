integer::arr(3)
integer,pointer::ptr
integer,target::t1=1
DATA (arr(i),i=1,0),ptr /0*10,t1/
if(any(arr.ne.[0,0,0]))print*,"102"
if(associated(ptr).neqv..true.)print*,"104"
if(t1.ne.1)print*,"105"
print*,"PASS"
end
