interface
 subroutine sub()
 end subroutine
end interface

call sub()
end

subroutine sub()
integer::arr(3)
integer::arr2(5)
integer,pointer::ptr
integer,target,save::t1=1
integer,pointer::ptr2=>t1
integer,pointer::ptr3=>NULL()
DATA (arr(i),i=1,2),arr2(1:5:2),ptr /11,12,1,2,3,t1/
if(any(arr.ne.[11,12,0]))print*,"102",arr
if(any(arr2.ne.[1,0,2,0,3]))print*,"103"
if(associated(ptr).neqv..true.)print*,"104",associated(ptr)
if(associated(ptr2).neqv..true.)print*,"105",associated(ptr2)
if(associated(ptr3).neqv..false.)print*,"106",associated(ptr3)
if(t1.ne.1)print*,"103"
print*,"PASS"
end subroutine
