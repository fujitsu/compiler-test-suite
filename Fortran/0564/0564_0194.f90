type ty
integer,allocatable :: alc
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

class(ty),allocatable :: obj1(:)
class(ty),allocatable :: obj3(:)
type(ty),pointer :: obj2(:)

allocate(ts::obj1(2))
allocate(ts::obj3(2))
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
obj3 = obj1
if(size(obj3) /= 2) print*, 101, size(obj1)

if(obj3(1)%alc /= 4) print*,102,obj3(1)%alc
if(obj3(2)%alc /= 5) print*,103,obj3(2)%alc
if(obj3(1)%alc2 /= 6) print*,104,obj3(1)%alc
if(obj3(2)%alc2 /= 7) print*,105,obj3(2)%alc

select type (obj3)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
