type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg(:)
end type

type ts
type(tt),allocatable :: obj1
type(tt) :: obj2
end type

type(ts):: objTT, objTS

allocate(objTS%obj2%alc(3))
allocate(objTS%obj2%msg(3))

objTS%obj2%alc(1) = 4
objTS%obj2%msg(1) = "JAPAN"
objTS%obj2%alc(2) = 5
objTS%obj2%alc(3) = 6
objTS%obj2%msg(3) = "CASES"

objTT%obj1 = objTS%obj2
if(size(objTT%obj1%alc) /= 3) print*, 101, size(objTT%obj1%alc)
if(objTT%obj1%alc(1) /= 4) print*,102
if(objTT%obj1%msg(1) /= "JAPAN") print*,103
if(objTT%obj1%alc(2) /= 5) print*,104, objTT%obj1%alc(2)
if(objTT%obj1%alc(3) /= 6) print*,106
if(objTT%obj1%msg(3) /= "CASES") print*,107
print*,"PASS"
end
