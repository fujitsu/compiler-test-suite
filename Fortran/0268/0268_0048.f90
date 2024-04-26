integer::arr(5)
data arr(1:5:1) /5*1/
if(any(arr.ne.[1,1,1,1,1]))print*,"101"
print*,"PASS"
End 
