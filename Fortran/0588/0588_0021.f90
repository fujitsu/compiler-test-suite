type ty
integer,pointer::ptr(:)
end type

type,extends(ty)::ty1
real,pointer::rr
end type

real,target::a1 = 2
integer,target::trg(5) =[1.0,2.0,3.0,4.0,5.0]
type(ty1)::obj
data obj /ty1(ty(trg(1:5:2)),a1)/
if(any(obj%ptr.ne.[1.0,3.0,5.0]))print*,"101"
if(obj%rr.ne.2.0)print*,"102"
print*,"PASS"
end
