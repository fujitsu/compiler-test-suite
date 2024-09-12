type ty
integer :: ii
end type

type,extends(ty) :: tty
integer :: jj
end type

class(ty),allocatable :: obj1(:)
class(ty),allocatable :: obj2(:)

allocate(tty::obj1(2))

obj1(2)%ii = 10

obj2 = obj1

select type(obj2)
    type is(tty)
      if(sizeof(obj2) .ne. 16) print*,"111"
      if(size(obj2) .ne. 2) print*,"222"
    class default
      print*,"333"
end select
print*,"pass"
end
