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
allocate(objTS%obj2(5))

allocate(objTT%obj1(1)%alc(2))
allocate(objTT%obj1(2)%alc(3))
allocate(objTT%obj1(1)%alc2)
allocate(objTT%obj1(2)%alc2)

objTT%obj1(1)%alc = 7
objTT%obj1(2)%alc = 8
objTT%obj1(1)%alc2 = 9
objTT%obj1(2)%alc2 = 10
objTT%obj1(1)%msg = "HELLO"
objTT%obj1(2)%msg = "WORLD"

allocate(objTS%obj2(1)%alc(2))
allocate(objTS%obj2(2)%alc(2))
allocate(objTS%obj2(3)%alc(3))
allocate(objTS%obj2(5)%alc(3))
allocate(objTS%obj2(1)%alc2)
allocate(objTS%obj2(2)%alc2)
allocate(objTS%obj2(3)%alc2)

objTS%obj2(1)%alc = 4
objTS%obj2(2)%alc = 5
objTS%obj2(3)%alc = 6
objTS%obj2(5)%alc = 7
objTS%obj2(1)%alc2 = 8
objTS%obj2(2)%alc2 = 9
objTS%obj2(3)%alc2 = 10
objTS%obj2(1)%msg = "NIGHT"
objTS%obj2(2)%msg = "HELLO"
objTS%obj2(3)%msg = "BESTT"
objTS%obj2(5)%msg = "WORLD"

if(size(objTT%obj1) /= 2) print*, 911

objTT%obj1 = objTS%obj2(1:5:2)

if(size(objTT%obj1) /= 3) print*, 101,size(objTT%obj1)
if(objTT%obj1(1)%alc(1) /= 4) print*,102
if(objTT%obj1(2)%alc(2) /= 6) print*,103, objTT%obj1(2)%alc(2)
if(objTT%obj1(3)%alc(2) /= 7) print*,104,objTT%obj1(3)%alc(2)
if(objTT%obj1(1)%alc2 /= 8) print*,105
if(objTT%obj1(2)%alc2 /= 10) print*,106, objTT%obj1(2)%alc2
if(objTT%obj1(1)%msg(1,2) /= "NIGHT") print*,107
if(objTT%obj1(2)%msg(2,1) /= "BESTT") print*,108
if(objTT%obj1(3)%msg(3,2) /= "WORLD") print*,109
print*, "PASS"
end
