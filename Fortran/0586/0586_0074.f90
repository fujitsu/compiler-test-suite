integer::arr(3,3,3)
integer::arr2(3,3,3)
integer::arr3(3,3,3)
integer,target::t1
integer,pointer::ptr
integer,target::t2
integer,pointer::ptr2
integer,target::t3
integer,pointer::ptr3
integer::num1
t1=20
t2=25
t3=30
data arr(1:3:1,1:3:1,1:3:1),ptr /27*1,t1/
data ptr2,arr2(1:3:2,1:3:2,1:3:2) /t2,8*1/
data ptr3,arr3(1,1:3:2,1:3:2),num1 /t3,5*1/
if(any(arr.ne.reshape([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[3,3,3])))print*,"102",arr
if(any(arr2.ne.reshape([1,0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0 ,1, 0, 1],[3,3,3])))print*,"102",arr2
if(any(arr3.ne.reshape([1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0],[3,3,3])))print*,"102",arr3
if(t1.ne.20)print*,"104"
if(t2.ne.25)print*,"105"
if(t3.ne.30)print*,"106"
if(num1.ne.1)print*,"107"
if(associated(ptr).neqv..true.)print*,"106"
if(associated(ptr2).neqv..true.)print*,"107"
if(associated(ptr3).neqv..true.)print*,"108"
print*,"PASS"
End 


