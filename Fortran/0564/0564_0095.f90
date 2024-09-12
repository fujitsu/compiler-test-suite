type ty
integer,allocatable :: alc
integer,allocatable :: alc2
end type

type(ty),allocatable :: obj1(:)
type(ty),allocatable :: obj2(:)

allocate(obj2(2))

allocate(obj2(1)%alc)
allocate(obj2(2)%alc)
allocate(obj2(1)%alc2)
allocate(obj2(2)%alc2)

obj2(1)%alc = 4
obj2(2)%alc = 5
obj2(1)%alc2 = 6
obj2(2)%alc2 = 7

obj1 = obj2
if(size(obj1) /= 2) print*, 101, size(obj1)

if(obj1(1)%alc /= 4) print*,102,obj1(1)%alc
if(obj1(2)%alc /= 5) print*,103,obj1(1)%alc
if(obj1(1)%alc2 /= 6) print*,104,obj1(1)%alc
if(obj1(2)%alc2 /= 7) print*,105,obj1(1)%alc
print*,"PASS"
end
