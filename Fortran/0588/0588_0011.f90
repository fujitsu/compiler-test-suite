integer,parameter::m=1
type ty
 integer,pointer::ptr
end type
integer,target::trg=11
type(ty)::obj(1:-1) = [(ty(NULL()),l=2,1,m+1)]
type(ty)::obj2(1:-1) = [(ty(NULL()),l=2,1,m+1)]
if(size(obj).ne.0)print*,"101"
if(size(obj2).ne.0)print*,"101"
print*,"PASS"
end
