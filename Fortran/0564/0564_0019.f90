type ty
integer,allocatable :: alc(:)
character(LEN=5),allocatable::msg(:)
end type

type, EXTENDS(ty) :: tt
end type

type ts
class(ty),allocatable :: obj1
type(tt),pointer:: obj2(:)
end type

type(ts):: objTT, objTS

allocate(objTT%obj1)
allocate(tt::objTS%obj2(4))

allocate(objTT%obj1%alc(2))
allocate(objTT%obj1%msg(2))

allocate(objTS%obj2(2)%alc(3))
allocate(objTS%obj2(2)%msg(3))

objTT%obj1%alc(1) = 7
objTT%obj1%alc(2) = 8
objTT%obj1%msg(1) = "HELLO"
objTT%obj1%msg(2) = "WORLD"

objTS%obj2(2)%alc(1) = 4
objTS%obj2(2)%msg(1) = "JAPAN"
objTS%obj2(2)%alc(2) = 5
objTS%obj2(2)%alc(3) = 6
objTS%obj2(2)%msg(3) = "CASES"

objTT%obj1 = objTS%obj2(2)
if(size(objTT%obj1%alc) /= 3) print*, 101, size(objTT%obj1%alc)
if(objTT%obj1%alc(1) /= 4) print*,102
if(objTT%obj1%msg(1) /= "JAPAN") print*,103
if(objTT%obj1%alc(2) /= 5) print*,104, objTT%obj1%alc(2)
if(objTT%obj1%alc(3) /= 6) print*,106
if(objTT%obj1%msg(3) /= "CASES") print*,107

select type (x => objTT%obj1)
type is (tt)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
