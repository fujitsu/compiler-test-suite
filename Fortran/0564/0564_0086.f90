type ty
integer,allocatable :: alc(:)
end type

type tt
type(ty),allocatable :: obj1(:)
type(ty),pointer :: obj2(:)
end type

type(tt)::objTS(2), objTT(2)

allocate(objTT(1)%obj1(3))
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
allocate(objTS(2)%obj2(3))

allocate(objTS(1)%obj2(1)%alc(2))
allocate(objTS(1)%obj2(2)%alc(2))
allocate(objTS(2)%obj2(1)%alc(2))
allocate(objTS(2)%obj2(2)%alc(2))

objTS(1)%obj2(1)%alc = 5
objTS(1)%obj2(2)%alc = 6
objTS(2)%obj2(1)%alc = 7
objTS(2)%obj2(2)%alc = 8

objTT(2)%obj1 = objTS(1)%obj2
if(.NOT.ALLOCATED(objTT(2)%obj1)) print*, 121
if(size(objTT(2)%obj1) /= 3) print*, 101, size(objTT(2)%obj1), size(objTS(1)%obj2)
if(objTT(2)%obj1(1)%alc(1) /= 5) print*,102, objTT(2)%obj1(1)%alc(1)
if(objTT(2)%obj1(2)%alc(2) /= 6) print*,103, objTT(2)%obj1(2)%alc(2)
print*, "PASS"
end
