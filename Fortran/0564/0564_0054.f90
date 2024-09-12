type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:,:)
type(ty),allocatable :: obj2(:,:)
end type

type(tt)::objTT
allocate(objTT%obj1(2,3))

allocate(objTT%obj1(1,2)%alc(2))
allocate(objTT%obj1(2,3)%alc(3))
allocate(objTT%obj1(1,2)%alc2)
allocate(objTT%obj1(2,3)%alc2)

objTT%obj1(1,2)%alc = 7
objTT%obj1(2,3)%alc = 8
objTT%obj1(1,2)%alc2 = 9
objTT%obj1(2,3)%alc2 = 10
objTT%obj1(2,2)%msg = "WORLD"

call sub(objTT%obj1)

if(size(objTT%obj1) /= 12) print*, 101
if(objTT%obj1(1,2)%alc(1) /= 4) print*,102
if(objTT%obj1(2,2)%alc(2) /= 5) print*,103
if(objTT%obj1(1,2)%alc2 /= 6) print*,104
if(objTT%obj1(2,2)%alc2 /= 7) print*,105
if(objTT%obj1(2,2)%msg(2,2) /= "HELLO") print*,106
print*, "PASS"

contains
subroutine sub (obj1)
type(ty),allocatable::obj1(:,:)
type(ty)::obj2(3,4)

allocate(obj2(1,2)%alc(2))
allocate(obj2(2,2)%alc(2))
allocate(obj2(1,2)%alc2)
allocate(obj2(2,2)%alc2)

obj2(1,2)%alc = 4
obj2(2,2)%alc = 5
obj2(1,2)%alc2 = 6
obj2(2,2)%alc2 = 7
obj2(1,2)%msg = "WORLD"
obj2(2,2)%msg = "HELLO"

obj1 = obj2
if(size(obj1) /= 12) print*, 101, size(obj1)
if(obj1(1,2)%alc(1) /= 4) print*,102
if(obj1(2,2)%alc(2) /= 5) print*,103
if(obj1(1,2)%alc2 /= 6) print*,104
if(obj1(2,2)%alc2 /= 7) print*,105
if(obj1(1,2)%msg(2,2) /= "WORLD") print*,106
if(obj1(2,2)%msg(2,2) /= "HELLO") print*,107
end subroutine
end
