type ty
integer::p
integer,pointer::q
end type ty
type(ty)::obj
integer::k
integer,pointer::ptr
integer,target::t1=1
data obj%p,obj%q,k,ptr /10,t1,12,t1/
if(obj%p.ne.10)print*,"101"
if(.not.associated(obj%q))print*,"102",associated(obj%q)
if(k.ne.12)print*,"103"
if(associated(ptr).neqv..true.)print*,"104",associated(ptr)
if(associated(ptr))then
if(ptr.ne.t1)print*,"104"
endif
print*,"Pass"
end

