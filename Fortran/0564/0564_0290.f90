type ty
integer,allocatable :: alc(:)
character(LEN=5),allocatable::msg(:)
end type

type, EXTENDS(ty) :: tt
end type

class(ty),allocatable :: obj1
type(ty),allocatable :: obj2

allocate(obj1)
allocate(ty::obj2)

allocate(obj1%alc(2))
allocate(obj1%msg(2))
allocate(obj2%alc(3))
allocate(obj2%msg(3))

obj1%alc(1) = 7
obj1%alc(2) = 8
obj1%msg(1) = "HELLO"
obj1%msg(2) = "WORLD"

obj2%alc(1) = 4
obj2%msg(1) = "JAPAN"
obj2%alc(2) = 5
obj2%alc(3) = 6
obj2%msg(3) = "CASES"

obj1 = obj2
if(size(obj1%alc) /= 3) print*, 101, size(obj1%alc)
if(obj1%alc(1) /= 4) print*,102
if(obj1%msg(1) /= "JAPAN") print*,103
if(obj1%alc(2) /= 5) print*,104, obj1%alc(2)
if(obj1%alc(3) /= 6) print*,106
if(obj1%msg(3) /= "CASES") print*,107

select type (obj1)
type is (ty)
    print*, "PASS"
class default
        print*,"ERROR"
end select
end
