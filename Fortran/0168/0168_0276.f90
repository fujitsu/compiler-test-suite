type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg(:)
end type

type(tt),allocatable :: obj1
class(tt),allocatable :: obj2

allocate(obj2)

allocate(obj2%alc(3))
allocate(obj2%msg(3))

obj1 = obj2
print*,"pass"
end
