integer::arr(5)
data arr(1:5:1) /1,2,3,4,5/
if(any(arr.ne.[1,2,3,4,5]))print*,"101"
print*,"PASS"
End 
