type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg
end type

type ts
class(ty),allocatable :: obj1(:)
type(ty),pointer :: obj2(:)
end type

type(ts) :: objTT, objTS

allocate(tt::objTT%obj1(2))
allocate(ty::objTS%obj2(3))

allocate(objTS%obj2(1)%alc(2))
allocate(objTS%obj2(2)%alc(2))
allocate(objTS%obj2(3)%alc(2))

allocate(objTT%obj1(1)%alc(2))
allocate(objTT%obj1(2)%alc(3))

objTT%obj1(1)%alc = 7
objTT%obj1(2)%alc = 8

objTS%obj2(1)%alc = 4
objTS%obj2(2)%alc = 5
objTS%obj2(3)%alc = 6

objTT%obj1 = objTS%obj2
if(size(objTT%obj1) /= 3) print*, 101
if(objTT%obj1(1)%alc(1) /= 4) print*,102
if(objTT%obj1(2)%alc(1) /= 5) print*,103
if(objTT%obj1(3)%alc(1) /= 6) print*,103

select type (x => objTT%obj1)
type is (ty)
print*, "PASS"
class default
    print*,"ERROR"
end select
end
