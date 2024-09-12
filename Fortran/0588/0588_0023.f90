type tt1
integer,pointer::ptr(:)
end type

type,extends(tt1)::tt2
real,pointer::rr
end type



type ty
integer,pointer::ptr(:)
end type

type,extends(ty)::ty1

real,pointer::rr
type(tt2)::arr(2)
end type

real,target::a1 = 2
integer,target::trg(5) =[1.0,2.0,3.0,4.0,5.0]
type(ty1)::obj(2) = [ty1(ty(trg(1:5:2)),a1,[tt2(tt1(trg(1:5:2)),a1),tt2(tt1(trg(1:5:2)),a1)]),ty1(ty(trg(1:5:2)),a1,[tt2(tt1(trg(1:5:2)),a1),tt2(tt1(trg(1:5:2)),a1)])]
if(any(obj(1)%ptr.ne.[1.0,3.0,5.0]))print*,"101"
if(obj(1)%rr.ne.2.0)print*,"102"
if(obj(1)%arr(1)%rr.ne.2.0)print*,"103"
if(any(obj(1)%arr(2)%ptr.ne.[1.0,3.0,5.0]))print*,"104"
print*,"PASS"
end
