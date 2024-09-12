integer::arr(3)
integer,target::t1 =30
integer,pointer::ptr
DATA (arr(i),i=2,1),ptr /t1/
if(associated(ptr).neqv..true.)print*,"109"
if(ptr.ne.30)print*,"110"
print*,"PASS"
end
