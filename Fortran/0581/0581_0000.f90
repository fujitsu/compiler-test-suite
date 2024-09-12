type ty
integer :: x1
integer,allocatable :: x2
end type

type(ty),allocatable :: obj1,obj2

allocate(obj2)
allocate(obj2%x2)

obj2%x1=21
obj2%x2=22

obj1 = obj2

obj2%x1=31
obj2%x2=32

if(obj1%x1 /= 21) print*,201
if(obj1%x2 /= 22) print*,202
print*,"PASS"
end
