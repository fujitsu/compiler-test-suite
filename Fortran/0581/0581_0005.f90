type ty
integer,allocatable :: alc(:)
end type

type, EXTENDS(ty) :: tt
character(LEN=5),allocatable::msg(:)
end type

type(ty),allocatable :: obj1
class(ty),allocatable :: obj2(:)

allocate(obj1)
allocate(tt::obj2(3))

allocate(obj1%alc(2))

select type(obj2)
 type is(tt)
  allocate(obj2(2)%alc(3))
  allocate(obj2(2)%msg(3))

  obj2(2)%alc(1) = 4
  obj2(2)%alc(2) = 5
  obj2(2)%alc(3) = 6
  obj2(2)%msg(1) = "JAPAN"
  obj2(2)%msg(3) = "CASES"

 class default
  print*,"911"
end select

obj1%alc(1) = 7
obj1%alc(2) = 8

obj1 = obj2(2)

select type(obj2)
 type is(tt)
  obj2(2)%alc(1) = 14
  obj2(2)%msg(1) = "1JAPA"
  obj2(2)%alc(2) = 15
  obj2(2)%alc(3) = 16
  obj2(2)%msg(3) = "1CASE"

 class default
  print*,"912"
end select

if(size(obj1%alc) /= 3) print*, 101
if(obj1%alc(1) /= 4) print*,102
if(obj1%alc(2) /= 5) print*,104
if(obj1%alc(3) /= 6) print*,106
print*,"PASS"
end
