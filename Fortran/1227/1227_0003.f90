module m
type z
end type
type,extends(z) :: ze
  integer(8)::dz(2)
  integer,allocatable::w
end type

type ty0
  integer(8)::dx
end type
type,extends(ty0) :: ty1
  integer(8)::dy(2)
  class(z),allocatable::obj
end type
end module

use m
class(z),allocatable:: q
type(ty1):: ty1_obj1
allocate(ze::q       )
select type(q       )
 type is(ze)
    allocate(q       %w,source=1)
end select
!print *,111
ty1_obj1%obj=q       
!print *,112
print*,'sngg369t : pass'
end
