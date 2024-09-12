type ty
integer,allocatable :: alc(:)
end type

type tt
type(ty),allocatable :: obj1(:)
type(ty),pointer :: obj2(:)
end type

type(tt)::objTS(2), objTT(2)

allocate(objTS(1)%obj2(2))
allocate(objTS(2)%obj2(2))

allocate(objTS(1)%obj2(1)%alc(2))
allocate(objTS(1)%obj2(2)%alc(2))
allocate(objTS(2)%obj2(1)%alc(2))
allocate(objTS(2)%obj2(2)%alc(2))

objTS(1)%obj2(1)%alc = 5
objTS(1)%obj2(2)%alc = 6
objTS(2)%obj2(1)%alc = 7
objTS(2)%obj2(2)%alc = 8

objTT(2)%obj1 = objTS(2)%obj2

if(size(objTT(2)%obj1) /= 2) print*, 101, size(objTT(2)%obj1), size(objTS(2)%obj2)
if(objTT(2)%obj1(1)%alc(1) /= 7) print*,102, objTT(2)%obj1(1)%alc(1)
if(objTT(2)%obj1(2)%alc(2) /= 8) print*,103, objTT(2)%obj1(2)%alc(2)
print*, "PASS"
end
