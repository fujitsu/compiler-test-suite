type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg(:)
end type

class(tt),allocatable :: obj1
type(tt),allocatable :: obj2(:)

allocate(obj1)
allocate(obj2(3))

allocate(obj1%alc(2))

  allocate(obj2(2)%alc(3))
  allocate(obj2(2)%msg(3))

  obj2(2)%alc(1) = 4
  obj2(2)%alc(2) = 5
  obj2(2)%alc(3) = 6
  obj2(2)%msg(1) = "JAPAN"
  obj2(2)%msg(3) = "CASES"

obj1%alc(1) = 7
obj1%alc(2) = 8

obj1 = obj2(2)

  obj2(2)%alc(1) = 14
  obj2(2)%msg(1) = "1JAPA"
  obj2(2)%alc(2) = 15
  obj2(2)%alc(3) = 16
  obj2(2)%msg(3) = "1CASE"

if(size(obj1%alc) /= 3) print*, 101
if(obj1%alc(1) /= 4) print*,102
if(obj1%alc(2) /= 5) print*,104
if(obj1%alc(3) /= 6) print*,106
if(obj1%msg(1) /= "JAPAN") print*,103
if(obj1%msg(3) /= "CASES") print*,105
print*,"PASS"
end
