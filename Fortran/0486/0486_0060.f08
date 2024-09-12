type ty
integer,allocatable :: alc(:)
character(LEN=5),allocatable::msg(:)
end type

type, EXTENDS(ty) :: tt
end type

class(ty),allocatable :: obj1
type(tt),pointer :: obj2

allocate(obj1)
allocate(obj2)

allocate(obj1%alc(2))
allocate(obj1%msg(2))
allocate(obj2%alc(3))
allocate(obj2%msg(3))

obj1%alc(1) = 7
obj1%msg(1) = "HELLO"

obj2%alc(1) = 4
obj2%msg(1) = "PRINT"
obj2%alc(2) = 5
obj2%alc(3) = 6
obj2%msg(3) = "CASES"

obj1 = obj2
if(size(obj1%alc) /= 3) print*, 101, size(obj1%alc)
if(obj1%alc(1) /= 4) print*,102
if(obj1%msg(1) /= "PRINT") print*,103
if(obj1%alc(2) /= 5) print*,104, obj1%alc(2)
if(obj1%alc(3) /= 6) print*,106
if(obj1%msg(3) /= "CASES") print*,107

select type (obj1)
type is (tt)
    print*, "pass"
class default
        print*,"ERROR"
end select
end