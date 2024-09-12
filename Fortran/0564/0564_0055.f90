type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type tt
type(ty),allocatable :: obj1(:,:)
type(ty):: obj2(3,4)
end type

type(tt)::objTS, objTT
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

allocate(objTS%obj2(1,2)%alc(2))
allocate(objTS%obj2(2,2)%alc(3))
allocate(objTS%obj2(1,2)%alc2)
allocate(objTS%obj2(3,3)%alc2)

objTS%obj2(1,2)%alc = 4
objTS%obj2(2,2)%alc = 5
objTS%obj2(1,2)%alc2 = 6
objTS%obj2(3,3)%alc2 = 7
objTS%obj2(2,2)%msg = "HELLO"

call sub(objTT%obj1, objTS%obj2(1:3,1:3))

contains
subroutine sub(dmy1, dmy2)
type(ty),allocatable::dmy1(:,:)
type(ty)::dmy2(1:,1:)

dmy1 = dmy2
if(size(dmy1) /= 9) print*, 101, size(dmy1)
if(dmy1(1,2)%alc(1) /= 4) print*,102
if(dmy1(2,2)%alc(2) /= 5) print*,103
if(dmy1(1,2)%alc2 /= 6) print*,104
if(dmy1(3,3)%alc2 /= 7) print*,105, dmy1(3,3)%alc2
if(dmy1(2,2)%msg(2,2) /= "HELLO") print*,106
print*, "PASS"
end subroutine
end
