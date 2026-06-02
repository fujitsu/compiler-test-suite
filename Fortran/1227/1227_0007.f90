module m
type ty0
  integer(8)::d1
end type

type,extends(ty0) :: ty1
  integer(8)::d2
class(ty0),allocatable::obj
class(ty0),allocatable::pbj1
class(ty0),allocatable::qbj2
end type

type,extends(ty1) :: ty2
integer :: kk
end type
end module

use m
class(ty1),allocatable:: ty1_obj1
allocate(ty2::ty1_obj1)
allocate(ty2::ty1_obj1%obj)
allocate(ty2::ty1_obj1%pbj1)
allocate(ty2::ty1_obj1%qbj2)
!print *,111
ty1_obj1%obj=ty1_obj1
!print *,112
print*,'sngg407t : pass'
end
