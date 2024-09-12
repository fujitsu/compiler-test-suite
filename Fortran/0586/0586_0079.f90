type ty
integer::arr(2)
integer,pointer::ptr
end type ty
integer,target::tar=30
type(ty)::obj
data obj%arr,obj%ptr /1,2,tar/
if(any(obj%arr.ne.[1,2]))print*,"101"
if(associated(obj%ptr).neqv..true.)print*,"102"
if(associated(obj%ptr))then
if (obj%ptr.ne.tar)print*,"103"
endif
print*,"PASS"
End 


