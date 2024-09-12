type ty
 integer::p
 integer::q
end type ty

type(ty)::obj
integer::k
integer,pointer::ptr
integer,target::t1=1
data obj,k,ptr /ty(10,12),12,t1/
if(obj%p.ne.10)print*,"101"
if(obj%q.ne.12)print*,"104"
if(k.ne.12)print*,"103"
if(associated(ptr).neqv..true.)print*,"105",associated(ptr)
if(associated(ptr))then
if(ptr.ne.t1)print*,"102"
endif
print*,"Pass"
end

