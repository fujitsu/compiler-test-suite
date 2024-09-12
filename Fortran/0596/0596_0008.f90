module m0
type ty
complex,allocatable::cmp
contains
final::fin
end type

type, extends(ty)::ts
end type

contains
subroutine fin(dmy)
TYPE(ty):: dmy(:)
print*,"FIN"
end subroutine
end module

use m0
class(ty),allocatable :: obj1(:)
class(ty),allocatable :: obj2(:)
allocate(obj1(3))
allocate(ts::obj2(2))
obj1 = obj2
select type(obj1)
 type is (ts)
  print*,"PASS"
 class default
  print*,911
end select
end
