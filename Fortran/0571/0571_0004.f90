type ts(k)
      integer, KIND::k
      integer::arr(k)
end type

type,EXTENDS(ts)::ty
      integer :: alc
      real::rlc
end type

type tt
      type(ty(4)),allocatable :: obj1
      type(ty(4)),allocatable :: obj2
end type

type(tt)::objTT,objTS

allocate(ty(4)::objTT%obj1)
allocate(ty(4)::objTS%obj2)

objTT%obj1%rlc = 6.45

objTS%obj2%alc = 4
objTS%obj2%rlc = 2.34
objTS%obj2%arr(1)=111
objTS%obj2%arr(2)=122


objTT%obj1 = objTS%obj2
if(.NOT.ALLOCATED(objTT%obj1)) print*, 101
if(KIND(objTT%obj1%alc) /= 4) print*, 104

if(objTT%obj1%alc /= 4) print*, 109
if(objTT%obj1%rlc /= 2.34) print*, 113

if(objTT%obj1%arr(1) /= 111) print*, 114
if(objTT%obj1%arr(2) /= 122) print*, 115
print*, "PASS"
end
