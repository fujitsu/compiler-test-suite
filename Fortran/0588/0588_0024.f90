

type ty
  integer,pointer::aa
  integer,pointer::aaa(:)
end type

type(ty)::obj(2)

integer,target::trg=111
type ty2
integer::trg(5)= [1,2,3,4,5]
end type
type(ty2),target::objtar

data (obj(i),i=1,2) /ty(trg,objtar%trg(1:5:2)),ty(trg,objtar%trg(1:5:1))/

if(obj(1)%aa.ne.111)print*,"101"
if(obj(2)%aa.ne.111)print*,"102"
if(any(obj(1)%aaa.ne.[1,3,5]))print*,"103"
if(any(obj(2)%aaa.ne.[1,2,3,4,5]))print*,"104"
print*,"PASS"
end 
