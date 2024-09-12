type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)
end type

type(tt),target::objTS1,objTT
type(tt),pointer::objTS
objTS=>objTS1

allocate(objTS%obj2(3,4))

allocate(objTS%obj2(1,2)%alc(2))
allocate(objTS%obj2(2,2)%alc(2))
allocate(objTS%obj2(1,2)%alc2)
allocate(objTS%obj2(2,2)%alc2)

objTS%obj2(1,2)%alc = 4
objTS%obj2(2,2)%alc = 5
objTS%obj2(1,2)%alc2 = 6
objTS%obj2(2,2)%alc2 = 7
objTS%obj2(2,2)%msg = "HELLO"

objTT%obj1 = objTS%obj2
if(size(objTT%obj1) /= 12) print*, 101, size(objTT%obj1)
if(objTT%obj1(1,2)%alc(1) /= 4) print*,102
if(objTT%obj1(2,2)%alc(2) /= 5) print*,103
if(objTT%obj1(1,2)%alc2 /= 6) print*,104
if(objTT%obj1(2,2)%alc2 /= 7) print*,105
if(objTT%obj1(2,2)%msg(2,2) /= "HELLO") print*,106
if(LEN(objTT%obj1(2,2)%msg(2,2)) /= 5) print*,107
print*, "PASS"
end
