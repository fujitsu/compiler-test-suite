type ty
integer,pointer::ptr
end type

type,extends(ty)::ty1
real,pointer::rr
end type

real,target::a1=20.0
integer,target::trg
type(ty1)::obj
data obj /ty1(ty(NULL()),rr=a1)/
if(obj%rr.ne.20.0)print*,"101"
print*,"PASS"
end
