type ty
integer::p
integer::q
end type ty
type(ty)::obj
integer,pointer::ptr
data obj,ptr /ty(10,20),NULL()/
if(obj%p.ne.10)print*,"101"
if(obj%q.ne.20)print*,"102"
if(associated(ptr).neqv..false.)print*,"101"
print*,"PASS"
end
