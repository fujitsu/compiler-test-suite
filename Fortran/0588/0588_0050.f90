type oo
integer::aa
end type

type,extends(oo)::zz
integer,pointer::ii
end type

type ty
type(zz),pointer::obj1
end type

integer,target::tar=555
type(zz),target::trg= zz(111,tar)
type(ty)::obj

data obj / ty(trg)/
if(obj%obj1%aa.ne.111)print*,"101"
if(obj%obj1%ii.ne.555)print*,"102"

print*,"PASS"
end
