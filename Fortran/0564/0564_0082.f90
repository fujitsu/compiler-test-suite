type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:)
type(ty),pointer :: obj2(:)
end type

type(tt)::objTS, objTT

allocate(objTT%obj1(2))
allocate(objTS%obj2(3))

allocate(objTT%obj1(1)%alc(2))
allocate(objTT%obj1(2)%alc(3))
allocate(objTT%obj1(1)%alc2)
allocate(objTT%obj1(2)%alc2)

objTT%obj1(1)%alc   = 7
objTT%obj1(2)%alc   = 8
objTT%obj1(1)%alc2  = 9
objTT%obj1(2)%alc2  = 10
objTT%obj1(1)%msg = "WORLD"
objTT%obj1(2)%msg = "HELLO"

allocate(objTS%obj2(1)%alc(2))
allocate(objTS%obj2(2)%alc(2))
allocate(objTS%obj2(3)%alc(2))
allocate(objTS%obj2(1)%alc2)
allocate(objTS%obj2(2)%alc2)
allocate(objTS%obj2(3)%alc2)

objTS%obj2(1)%alc = 1
objTS%obj2(2)%alc = 2
objTS%obj2(3)%alc = 3
objTS%obj2(1)%alc2 = 4
objTS%obj2(2)%alc2 = 5
objTS%obj2(3)%alc2 = 6
objTS%obj2(1)%msg = "HELLO"
objTS%obj2(2)%msg = "WORLD"
objTS%obj2(3)%msg = "NIGHT"

objTT%obj1 = objTS%obj2
if(size(objTT%obj1) /= 3) print*, 101
if(objTT%obj1(1)%alc(1) /= 1) print*,102
if(objTT%obj1(2)%alc(2) /= 2) print*,103
if(objTT%obj1(3)%alc(2) /= 3) print*,104
if(objTT%obj1(1)%alc2 /= 4) print*,105
if(objTT%obj1(2)%alc2 /= 5) print*,106
if(objTT%obj1(3)%alc2 /= 6) print*,107
if(objTT%obj1(1)%msg(2,2) /= "HELLO") print*,108
if(objTT%obj1(2)%msg(2,2) /= "WORLD") print*,109
if(objTT%obj1(3)%msg(2,2) /= "NIGHT") print*,110
print*, "PASS"
end
