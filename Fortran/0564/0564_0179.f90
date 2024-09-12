type ty
integer,allocatable :: alc
integer,allocatable :: alc2
end type

type, extends(ty)::ts
 integer, allocatable :: a
end type

class(ty),allocatable :: obj1(:)
class(ty),pointer :: obj2(:)

allocate(ts::obj2(2))

allocate(obj2(1)%alc)
allocate(obj2(2)%alc)
allocate(obj2(1)%alc2)
allocate(obj2(2)%alc2)

select type(obj2)
type is (ts)
    allocate(obj2(1)%a)
    allocate(obj2(2)%a)
    obj2(1)%a=3
    obj2(2)%a=5
class default
 print*,201
end select

obj2(1)%alc = 4
obj2(2)%alc = 5
obj2(1)%alc2 = 6
obj2(2)%alc2 = 7

obj1 = obj2
if(size(obj1) /= 2) print*, 101, size(obj1)
if(obj1(1)%alc /= 4) print*,102,obj1(1)%alc
if(obj1(2)%alc /= 5) print*,103,obj1(2)%alc
if(obj1(1)%alc2 /= 6) print*,104,obj1(1)%alc
if(obj1(2)%alc2 /= 7) print*,105,obj1(2)%alc

select type (obj1)
type is (ts)
    if(obj1(1)%a .ne. 3) print*, 202
    if(obj1(2)%a .ne. 5) print*, 203
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
