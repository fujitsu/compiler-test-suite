module m1
type ty
integer :: ii
end type
end module

use m1
type,extends(ty) :: ty2
integer :: ii2
end type

class(ty),allocatable :: obj_parent,obj
allocate(ty2::obj_parent)

block
type,extends(ty) :: ty2
integer :: ii2
end type

allocate(ty2::obj)
if(extends_type_of(obj,obj_parent).eqv. .false.) then
 print*,'pass'
call ss(obj)
else
 print*,101
endif
end block

contains
subroutine ss(dd)
class(ty) :: dd
block
type,extends(ty) :: ty2
 integer :: ii2
end type

class(ty),allocatable :: oo
allocate(ty2:: oo)
if(extends_type_of(oo,dd) .neqv. .false.) print*,201,extends_type_of(oo,dd)
end block
end subroutine
end
