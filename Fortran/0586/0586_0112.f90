type ty
integer::a
integer::b
end type
type(ty),parameter::obj =ty(12,13)
type(ty)::obj1
type(ty)::objarr(3)
type(ty),target::obj2 = ty(12,13)
type(ty),pointer::ptr
integer::arr(2)
integer,parameter::rp =4
data arr,obj1,objarr,ptr /2*obj%a,rp*obj,obj2/
if(any(arr.ne.[12,12]))print*,"101"
if(obj1%a.ne.obj%a)print*,"102"
if(objarr(1)%a.ne.obj%a)print*,"102"
if(.not.associated(ptr))print*,"104"
print*,"PASS"
end

