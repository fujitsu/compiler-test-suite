type ty
integer,allocatable :: alc(:)
character(LEN=5),allocatable::msg(:)
end type

type, EXTENDS(ty) :: tt
character,allocatable::msg2
end type

class(ty),allocatable :: obj1
class(tt),pointer :: obj2

allocate(obj2)

allocate(obj2%alc(3))
allocate(obj2%msg(3))

select type (obj2)
type is (tt)
  allocate(obj2%msg2)
  obj2%msg2 = "I"
class default
    print*,"ERROR"
end select

obj2%alc(1) = 4
obj2%msg(1) = "JAPAN"
obj2%alc(2) = 5
obj2%alc(3) = 6
obj2%msg(3) = "CASES"

call sub(obj1, obj2)

contains
subroutine sub (obj1, obj2)
class(ty),allocatable :: obj1
class(tt) :: obj2

obj1 = obj2
if(size(obj1%alc) /= 3) print*, 101, size(obj1%alc)
if(obj1%alc(1) /= 4) print*,102
if(obj1%msg(1) /= "JAPAN") print*,103
if(obj1%alc(2) /= 5) print*,104, obj1%alc(2)
if(obj1%alc(3) /= 6) print*,106
if(obj1%msg(3) /= "CASES") print*,107
select type (x => obj1)
type is (tt)
    if(x%msg2 /= "I") print*, 132
    print*, "PASS"
class default
        print*,"ERROR"
end select
end subroutine
end
