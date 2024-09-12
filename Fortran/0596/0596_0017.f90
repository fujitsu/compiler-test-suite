module m0
type ty
complex,allocatable::cmp
contains
final::fin_a
end type

type, extends(ty)::ts
end type

contains
subroutine fin_a(dmy)
TYPE(ty):: dmy(:)
if(dmy(1)%cmp .ne. (3,4))print*,"103"
print*,"array called"
end subroutine
end module

use m0
call s
print*,"Pass"
contains
subroutine s
class(ty),allocatable :: obj1(:)
allocate(ts::obj1(3))
allocate(obj1(1)%cmp)
select type(obj1)
 type is (ts)
      obj1(1)%cmp=(3,4)
 class default
  print*,911
end select
end subroutine
end
