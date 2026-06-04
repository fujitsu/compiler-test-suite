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
type(ty2):: ty2_obj1
allocate(ty2::ty2_obj1%obj)
ty1_obj1=ty2_obj1
!print *,111
ty1_obj1%obj=ty1_obj1
!print *,112
print*,'sngg366t : pass'
end
