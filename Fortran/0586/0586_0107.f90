integer::arr(5)
integer::arr2(5)
integer,target::t1
integer,pointer::ptr
integer::num1
integer::num2
integer,target::t2
integer,pointer::ptr2
t1=20
t2=30
data num1,ptr2,arr,ptr,arr2,num2 /10,t1,1,2,3,12,6,t2,7,8,12,14,16,11/
if(any(arr.ne.[1,2,3,12,6]))print*,"101",arr
if(any(arr2.ne.[7,8,12,14,16]))print*,"109",arr
if(t1.ne.20)print*,"102"
if(t2.ne.30)print*,"103"
if(num1.ne.10)print*,"104"
if(num2.ne.11)print*,"105"
if(ptr.ne.t2)print*,"109"
if(ptr2.ne.t1)print*,"109"
print*,"PASS"
print*,"PASS"
End 


