type ty
integer,allocatable :: alc(:)
character(LEN=5),allocatable::msg(:)
end type

type, EXTENDS(ty) :: tt
end type

class(ty),allocatable :: obj1
class(ty),allocatable :: obj2

allocate(tt::obj2)

allocate(obj2%alc(3))
allocate(obj2%msg(3))

call sub(obj1, obj2)

contains
subroutine sub (obj1, obj2)
class(ty),allocatable :: obj1
class(ty),allocatable :: obj2

obj1 = obj2
if(size(obj1%alc) /= 3) print*, 101, size(obj1%alc)

select type (obj1)
type is (tt)
    print*, "pass"
class default
        print*,"ERROR"
end select
end subroutine
end
