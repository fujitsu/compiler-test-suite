type ty(K1)
integer,kind :: K1
integer :: arr(K1)
end type

type(ty(4)),allocatable :: obj1,obj2
allocate(ty(4)::obj1)
allocate(ty(4)::obj2)

obj1%arr(1)=11
obj1%arr(2)=12
obj1%arr(3)=13
obj1%arr(4)=14

obj2 = obj1
if(obj2%arr(1)/=11) print*,101
if(obj2%arr(2)/=12) print*,102
if(obj2%arr(3)/=13) print*,103
if(obj2%arr(4)/=14) print*,104

print*, 'PASS'
end

