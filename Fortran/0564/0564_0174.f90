type ty
integer,allocatable :: alc(:)
character(LEN=5)::msg(3,2)
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

type tt
class(ty),allocatable :: obj1(:,:)
type(ty) :: obj2(3,4)
end type

type(tt)::objTS, objTT

allocate(ts::objTT%obj1(3,4))

allocate(objTS%obj2(1,2)%alc(2))
allocate(objTS%obj2(2,2)%alc(2))
allocate(objTS%obj2(1,2)%alc2)
allocate(objTS%obj2(2,2)%alc2)

allocate(objTT%obj1(1,2)%alc(2))
allocate(objTT%obj1(2,3)%alc(3))
allocate(objTT%obj1(1,2)%alc2)
allocate(objTT%obj1(2,3)%alc2)

objTT%obj1(1,2)%alc = 7
objTT%obj1(2,3)%alc = 8
objTT%obj1(1,2)%alc2 = 9
objTT%obj1(2,3)%alc2 = 10
objTT%obj1(2,2)%msg = "WORLD"

objTS%obj2(1,2)%alc = 4
objTS%obj2(2,2)%alc = 5
objTS%obj2(1,2)%alc2 = 6
objTS%obj2(2,2)%alc2 = 7
objTS%obj2(2,2)%msg = "HELLO"

call sub(objTT%obj1, objTS%obj2)

contains
subroutine sub(dmy1, dmy2)
class(ty),allocatable::dmy1(:,:)
type(ty)::dmy2(:,:)

dmy1 = dmy2
if(size(dmy1) /= 12) print*, 101
if(dmy1(1,2)%alc(1) /= 4) print*,102
if(dmy1(2,2)%alc(2) /= 5) print*,103
if(dmy1(1,2)%alc2 /= 6) print*,104
if(dmy1(2,2)%alc2 /= 7) print*,105
if(dmy1(2,2)%msg(2,2) /= "HELLO") print*,106

select type (dmy1)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end subroutine
end