module mod1
type ty
integer,allocatable :: alc(:)
end type

type tt
type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:)
end type

type(tt)::objTS(2), objTT(2)
end module

program main
USE mod1
allocate(objTT(1)%obj1(2))
allocate(objTT(2)%obj1(3))

allocate(objTT(1)%obj1(1)%alc(2))
allocate(objTT(1)%obj1(2)%alc(2))
allocate(objTT(2)%obj1(1)%alc(2))
allocate(objTT(2)%obj1(2)%alc(2))

objTT(1)%obj1(1)%alc = 1
objTT(1)%obj1(2)%alc = 2
objTT(2)%obj1(1)%alc = 3
objTT(2)%obj1(2)%alc = 4

allocate(objTS(1)%obj2(3))
allocate(objTS(2)%obj2(4))

allocate(objTS(1)%obj2(1)%alc(2))
allocate(objTS(1)%obj2(2)%alc(2))
allocate(objTS(1)%obj2(3)%alc(2))
allocate(objTS(2)%obj2(1)%alc(2))
allocate(objTS(2)%obj2(2)%alc(2))
allocate(objTS(2)%obj2(3)%alc(2))

objTS(1)%obj2(1)%alc = 5
objTS(1)%obj2(2)%alc = 6
objTS(1)%obj2(3)%alc = 4
objTS(2)%obj2(1)%alc = 7
objTS(2)%obj2(2)%alc = 8
objTS(2)%obj2(3)%alc = 9

objTT(2)%obj1 = objTS(2)%obj2
objTT(1)%obj1 = objTS(1)%obj2

if(.NOT.ALLOCATED(objTT(2)%obj1)) print*, 101
if(size(objTT(2)%obj1) /= 4) print*, 102, size(objTT(2)%obj1), size(objTS(2)%obj2)
if(objTT(2)%obj1(1)%alc(1) /= 7) print*,103, objTT(2)%obj1(1)%alc(1)
if(objTT(2)%obj1(2)%alc(2) /= 8) print*,104, objTT(2)%obj1(2)%alc(2)
if(objTT(2)%obj1(3)%alc(2) /= 9) print*,105, objTT(2)%obj1(2)%alc(2)

if(.NOT.ALLOCATED(objTT(1)%obj1)) print*, 121
if(size(objTT(1)%obj1) /= 3) print*, 122, size(objTT(1)%obj1), size(objTS(1)%obj2)
if(objTT(1)%obj1(1)%alc(1) /= 5) print*,123, objTT(1)%obj1(1)%alc(1)
if(objTT(1)%obj1(2)%alc(2) /= 6) print*,124, objTT(1)%obj1(2)%alc(2)
if(objTT(1)%obj1(3)%alc(2) /= 4) print*,125, objTT(1)%obj1(2)%alc(2)
print*, "PASS"
end
