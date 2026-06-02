module m
type zy0
  integer(8)::d1
end type
type,extends(zy0) :: zy1
  integer(8)::d2
class(zy0),allocatable::obj
end type
type,extends(zy1) :: zy2
integer :: kk
end type

type ty0
  integer(8)::d1
end type
type,extends(ty0) :: ty1
  integer(8)::d2
class(zy0),allocatable::obj
end type
type,extends(ty1) :: ty2
integer :: kk
end type
end module

use m
type (ty2),allocatable:: ty1_obj1
type (zy2),allocatable:: zy1_obj1
allocate(ty2::ty1_obj1)
allocate(zy2::zy1_obj1)
!print *,111
ty1_obj1%obj=zy1_obj1
k=0
select type(p=>ty1_obj1%obj)
  type is(zy2)
     k=1
     p%d1=1
     p%d2=1
     if (allocated(p%obj)) print *,2828
end select
if (k/=1) print *,2929
   
!print *,112
print*,'sngg405t : pass'
end
