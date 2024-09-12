type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg
end type

class(tt),allocatable :: obj1(:)
type(tt),allocatable :: obj2(:)

allocate(obj1(2))
allocate(obj2(3))

allocate(obj2(1)%alc(2))
allocate(obj2(3)%alc(2))

obj2(1)%alc = 4
obj2(3)%alc = 5

obj1 = obj2
if(size(obj1) /= 3) print*, 101
if(obj1(1)%alc(1) /= 4) print*,102
if(obj1(3)%alc(1) /= 5) print*,103

select type (obj1)
type is (tt)
print*, "PASS"
class default
    print*,"ERROR"
end select
end
