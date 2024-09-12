integer::arr(3)
integer,parameter :: brr(3)=[1,2,3]
integer,pointer::ptr
integer,target::t1
data arr(brr),ptr /44,45,46,t1/
if(any(arr.ne.[44,45,46]))print*,"101"
print*,"PASS"
End 


