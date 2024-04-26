type ty
integer::x
integer::y
end type
integer::arr(5)
type(ty)::obj
integer,pointer::ptr
integer,target::t1=30
data arr(1:5:1),obj,ptr /1,2,3,4,5,ty(1,2),t1/
if(any(arr.ne.[1,2,3,4,5]))print*,"101"
if(obj%x.ne.1)print*,"102"
if(obj%y.ne.2)print*,"103"
if(.not.associated(ptr))print*,"101"
print*,"PASS"
End 
