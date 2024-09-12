type ty(k)
integer, KIND::k

integer(KIND=k),allocatable :: alc(:)
integer,allocatable :: alc2
end type

type(ty(8)),allocatable :: obj1
type(ty(8)),allocatable :: obj2

allocate(ty(8)::obj2)

allocate(obj2%alc(2))
allocate(obj2%alc2)

obj2%alc(1) = 5
obj2%alc(2) = 6
obj2%alc2 = 7

obj1 = obj2
if(KIND(obj2%alc(2)) /= 8) print*, 105
if(obj1%alc(1) /= 5) print*,106
if(obj1%alc(2) /= 6) print*,107
if(obj1%alc2 /= 7) print*,108
if(obj1%k /= 8) print*,112
print*, "PASS"
end
