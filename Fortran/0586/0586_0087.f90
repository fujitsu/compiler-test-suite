integer::arr(3)
integer::arr2(3)
integer::k
integer,pointer::ptr
integer,target::t1=30
DATA (arr(i),i=1,2),k /11,12,13/
DATA (arr2(i),i=1,2),ptr /11,12,t1/
if(any(arr.ne.[11,12,0]))print*,"101"
if(any(arr2.ne.[11,12,0]))print*,"101"
if(k.ne.13)print*,"102"
if(associated(ptr).neqv..true.)print*,"109"
if(associated(ptr))then
if(ptr.ne.30)print*,"110"
endif
print*,"PASS"
end
