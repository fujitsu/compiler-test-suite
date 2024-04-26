call sub()
contains 
subroutine sub()

integer::arr(3)
integer::arr2(5)
integer,pointer::ptr
integer,pointer::ptr2
integer,target,save::t1=1
integer,parameter::k=1
DATA arr2(k:5:k+1),ptr ,(arr(i),i=k,2),ptr2 /1,2,3,t1,1,2,t1/
if(any(arr2.ne.[1,0,2,0,3]))print*,"102"
if(any(arr.ne.[1,2,0]))print*,"103"
if(associated(ptr).neqv..true.)print*,"103",associated(ptr)
if(associated(ptr2).neqv..true.)print*,"104",associated(ptr2)
if(ptr.ne.1)print*,"105"
if(ptr2.ne.1)print*,"103"
if(t1.ne.1)print*,"103"
print*,"PASS"
end subroutine
end
