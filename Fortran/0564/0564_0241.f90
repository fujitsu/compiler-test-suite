type ty
integer,allocatable :: alc(:)
character(LEN=5),allocatable::msg(:)
end type

type, EXTENDS(ty) :: tt
end type

type ts
class(ty),allocatable :: obj1
class(ty),pointer :: obj2(:,:)
end type

type(ts):: objTT(2), objTS(3)

allocate(objTT(2)%obj1)
allocate(tt::objTS(3)%obj2(4,3))

allocate(objTT(2)%obj1%alc(2))
allocate(objTT(2)%obj1%msg(2))

allocate(objTS(3)%obj2(2,3)%alc(3))
allocate(objTS(3)%obj2(2,3)%msg(3))

objTT(2)%obj1%alc(1) = 7
objTT(2)%obj1%alc(2) = 8
objTT(2)%obj1%msg(1) = "HELLO"
objTT(2)%obj1%msg(2) = "WORLD"

objTS(3)%obj2(2,3)%alc(1) = 4
objTS(3)%obj2(2,3)%msg(1) = "JAPAN"
objTS(3)%obj2(2,3)%alc(2) = 5
objTS(3)%obj2(2,3)%alc(3) = 6
objTS(3)%obj2(2,3)%msg(3) = "CASES"

objTT(2)%obj1 = objTS(3)%obj2(2,3)
if(size(objTT(2)%obj1%alc) /= 3) print*, 101, size(objTT(2)%obj1%alc)
if(objTT(2)%obj1%alc(1) /= 4) print*,102
if(objTT(2)%obj1%msg(1) /= "JAPAN") print*,103
if(objTT(2)%obj1%alc(2) /= 5) print*,104, objTT(2)%obj1%alc(2)
if(objTT(2)%obj1%alc(3) /= 6) print*,106
if(objTT(2)%obj1%msg(3) /= "CASES") print*,107

select type (x => objTT(2)%obj1)
type is (tt)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
