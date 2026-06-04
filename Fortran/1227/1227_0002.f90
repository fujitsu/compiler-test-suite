module m
type ty0
contains
end type

type,extends(ty0) :: ty1
class(ty0),allocatable::obj
contains
end type

type,extends(ty1) :: ty2
integer :: kk
contains
end type
end module

use m
class(ty1),allocatable:: ty1_obj1
class(ty1),allocatable:: w
type(ty2):: ty2_obj1
allocate(ty2::ty2_obj1%obj)
allocate(ty2::w)
!print *,111
ty2_obj1%obj=w
!print *,112
print*,'sngg368t : pass'
end
