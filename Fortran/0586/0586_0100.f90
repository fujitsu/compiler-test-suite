type ty
integer::x
integer::y
end type
type ty2
integer,pointer::ptr2
type(ty)::obj
end type
integer::arr(5)
type(ty)::obj1
type(ty2)::obj2
integer,pointer::ptr
integer,target::t1=30
data arr(1:5:1),obj1,ptr,obj2%ptr2, obj2%obj /1,2,3,4,5,ty(1,2),t1,t1,ty(1,2)/
if(any(arr.ne.[1,2,3,4,5]))print*,"101"
if(obj1%x.ne.1)print*,"102"
if(obj1%y.ne.2)print*,"103"
if(.not.associated(ptr))print*,"101"
if(obj2%obj%x.ne.1)print*,"102"
if(obj2%obj%y.ne.2)print*,"103"
print*,"PASS"
End 


