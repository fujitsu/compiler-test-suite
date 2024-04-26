type ty
integer::arr(5)
end type
type(ty)::obj
integer,pointer::ptr
integer,target::t1=30
integer::arr2(5)
data obj%arr(1:5:1),ptr,arr2(1:5:1) /1,2,3,4,5,t1,0*1,5*5/
if(any(obj%arr.ne.[1,2,3,4,5]))print*,"101"
if(any(arr2.ne.[5,5,5,5,5]))print*,"102"
if(associated(ptr).neqv..true.)print*,"105",associated(ptr)
print*,"PASS"
End 
