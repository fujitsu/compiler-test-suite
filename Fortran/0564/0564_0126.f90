type ty
integer,allocatable :: alc(:)
integer,allocatable :: alc2
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg
end type

type ts
type(tt),allocatable :: obj1(:,:)
class(tt),allocatable :: obj2(:,:)
end type

type(ts) :: objTT, objTS

allocate(objTS%obj2(3,4))
allocate(objTT%obj1(2,3))
allocate(objTT%obj2(3,2))

allocate(objTS%obj2(1,2)%alc(2))
allocate(objTS%obj2(2,2)%alc(2))
allocate(objTS%obj2(1,2)%alc2)
allocate(objTS%obj2(2,2)%alc2)
allocate(objTS%obj2(3,2)%msg)

allocate(objTT%obj2(3,2)%msg)

allocate(objTT%obj1(1,2)%alc(2))
allocate(objTT%obj1(2,1)%alc(3))
allocate(objTT%obj1(2,1)%alc2)
allocate(objTT%obj1(1,2)%alc2)
allocate(objTT%obj1(2,3)%msg)

objTT%obj1(1,2)%alc = 7
objTT%obj1(2,1)%alc = 8
objTT%obj1(1,2)%alc2 = 9
objTT%obj1(2,1)%alc2 = 10
objTT%obj1(2,3)%msg = "WORLD"

objTS%obj2(1,2)%alc = 4
objTS%obj2(2,2)%alc   = 5
objTS%obj2(1,2)%alc2  = 6
objTS%obj2(2,2)%alc2  = 7
objTS%obj2(3,2)%msg   = "HELLO"

objTT%obj1 = objTS%obj2
if(size(objTT%obj1) /= 12) print*, 101
if(objTT%obj1(1,2)%alc(1) /= 4) print*,102
if(objTT%obj1(2,2)%alc(1) /= 5) print*,104
if(objTT%obj1(1,2)%alc2 /= 6) print*,106
if(objTT%obj1(2,2)%alc2 /= 7) print*,107
if(objTT%obj1(3,2)%msg /= "HELLO") print*,108
if(LEN(objTT%obj1(3,2)%msg) /= LEN(objTT%obj2(3,2)%msg)) print*,109, LEN(objTT%obj1(3,2)%msg)
print*, "PASS"
end
