type ty
integer::p
integer,pointer::q
end type ty
type(ty)::obj
integer::k
integer,pointer::ptr
integer,target::t1=1
data obj,k,ptr /ty(10,NULL()),12,t1/
if(associated(obj%q))print*,"102"
if(k.ne.12)print*,"103"
if(associated(ptr).neqv..true.)print*,"101",associated(ptr)
if(associated(ptr))then
if(ptr.ne.t1)print*,"104"
endif
print*,"PASS"
end
