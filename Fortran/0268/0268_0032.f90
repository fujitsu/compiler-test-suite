type ty
integer::p
integer,pointer::q
integer,pointer::r
end type ty
type(ty)::obj
integer::k
integer,pointer::ptr
integer,target::t1=1
data obj%p,obj%q,k,ptr, obj%r /10,t1,12,NULL(),t1/
if(obj%p.ne.10)print*,"101"
if(associated(obj%q).neqv..true.)print*,"102"
if(k.ne.12)print*,"103"
if(associated(ptr))print*,"102"
print*,"PASS"
end
