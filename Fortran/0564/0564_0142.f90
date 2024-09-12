type tt
integer,allocatable:: alc(:)
end type

type, EXTENDS(tt)::ty
integer::a
end type

type ts
class(tt),allocatable :: obj1(:,:)
type(tt),allocatable :: obj2(:,:)
end type

type(ts):: objTT, objTS

allocate(ty::objTT%obj1(3,5))
allocate(tt::objTS%obj2(3,4))

allocate(objTT%obj1(1,2)%alc(2))
allocate(objTT%obj1(2,3)%alc(3))

objTT%obj1(1,2)%alc = 7
objTT%obj1(2,3)%alc = 8

allocate(objTS%obj2(1,2)%alc(2))
allocate(objTS%obj2(2,2)%alc(2))
allocate(objTS%obj2(3,3)%alc(3))

objTS%obj2(1,2)%alc = 4
objTS%obj2(2,2)%alc = 5
objTS%obj2(3,3)%alc = 6

objTT%obj1 = objTS%obj2(1:3,1:3)
if(size(objTT%obj1) /= 9) print*, 101,size(objTT%obj1)
if(objTT%obj1(1,2)%alc(1) /= 4) print*,102
if(objTT%obj1(2,2)%alc(2) /= 5) print*,103
if(objTT%obj1(3,3)%alc(2) /= 6) print*,104

select type (x => objTT%obj1)
type is (tt)
print*, "PASS"
class default
    print*,"ERROR"
end select
end
