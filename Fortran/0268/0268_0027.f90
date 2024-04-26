type ty
integer::p
integer,pointer::q
end type ty
type(ty)::obj
integer::k
data obj,k /ty(10,NULL()),12/
if(obj%p.ne.10)print*,"101"
if(associated(obj%q))print*,"102"
if(k.ne.12)print*,"103"
print*,"PASS"
end
