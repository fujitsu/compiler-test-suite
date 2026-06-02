module m
type ty0
  integer(8)::d1
end type

type,extends(ty0) :: ty1
  integer(8)::d2
class(ty0),allocatable::obj
end type

type,extends(ty1) :: ty2
integer :: kk
end type
end module

use m
class(ty1),allocatable:: ty1_obj1
class(ty1),allocatable:: ty1_obj2
allocate(ty2::ty1_obj1)
allocate(ty2::ty1_obj2)
!print *,111
ty1_obj1%obj=ty1_obj2
!print *,112
k=0
select type(p=>ty1_obj1%obj)
type is(ty2)
  if (allocated(p%obj)) print *,2929
  k=1
end select
if (k/=1) print *,191
print*,'sngg371t : pass'
end
