integer::arr(5)
integer,target::t1
integer,pointer::ptr
t1=20
data arr(1:5:2),ptr /1,2,3, t1/
if(any(arr.ne.[1,0,2,0,3]))print*,"101",arr
if(t1.ne.20)print*,"102"
print*,"PASS"
End 
