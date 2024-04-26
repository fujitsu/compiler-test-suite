type ty
integer::arr
end type
type(ty)::obj(5)
integer,pointer::ptr1
integer,pointer::ptr2
integer,target::t1=30
integer::arr2(3,3)
data obj(1:5:1)%arr,ptr1,arr2(1:3:2,1:3:2),ptr2 /1,2,3,4,5,t1,0*1,4*5,t1/
if(any(arr2.ne.reshape([5,0,5,0,0,0,5,0,5],[3,3])))print*,"102"
if(any(obj%arr.ne.reshape([1,2,3,4,5],[5])))print*,"103"
if(associated(ptr1).neqv..true.)print*,"105",associated(ptr1)
if(associated(ptr2).neqv..true.)print*,"106",associated(ptr2)
if(associated(ptr1))then
if(ptr1.ne.30)print*,"107"
endif
if(associated(ptr2))then
if(ptr2.ne.30)print*,"109"
endif
print*,"PASS"
End 
