type ty
integer,allocatable :: alc
character::msg
integer,allocatable :: alc2
end type

type, extends(ty)::ts
end type

class(ts),allocatable :: obj1(:)

allocate(obj1(3))

allocate(obj1(1)%alc)
allocate(obj1(2)%alc)
allocate(obj1(3)%alc)
allocate(obj1(1)%alc2)
allocate(obj1(2)%alc2)
allocate(obj1(3)%alc2)

obj1(1)%alc = 1
obj1(2)%alc = 2
obj1(3)%alc = 3
obj1(1)%alc2 = 4
obj1(2)%alc2 = 5
obj1(3)%alc2 = 6

obj1 = obj1(3:1:-1)

if(size(obj1) /= 3) print*, 101
if(obj1(1)%alc /= 3) print*,102
if(obj1(2)%alc /= 2) print*,103
if(obj1(3)%alc /= 1) print*,104
if(obj1(1)%alc2 /= 6) print*,105
if(obj1(2)%alc2 /= 5) print*,106
if(obj1(3)%alc2 /= 4) print*,107

select type (obj1)
type is (ts)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
