type ty
integer::arr(3,3)
end type
type(ty)::obj
integer,pointer::ptr
integer,pointer::ptr2
integer,target::t1=30
integer::arr2(3,3)
data obj%arr(1:3:2,1:3:2),ptr,arr2(1:3:2,1:3:2),ptr2 /1,2,3,4,t1,0*1,4*5,t1/
if(any(obj%arr.ne.reshape([1,0,2,0,0,0,3,0,4],[3,3])))print*,"101"
if(any(arr2.ne.reshape([5,0,5,0,0,0,5,0,5],[3,3])))print*,"102"
if(associated(ptr).neqv..true.)print*,"105",associated(ptr)
print*,"PASS"
End 


