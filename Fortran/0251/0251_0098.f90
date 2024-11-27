module m1
type ty
integer :: ii
end type
end module

use m1
type,extends(ty) :: ty2
integer :: ii2
end type

class(ty),allocatable :: obj_parent,obj,obj2
allocate(ty2::obj_parent)

block
interface
subroutine ss(dd)
import ty
class(ty) :: dd
end subroutine
end interface
type,extends(ty) :: ty3
integer :: ii2
end type

allocate(ty3::obj)

block
type,extends(ty) :: ty4
integer :: ii2
end type

allocate(ty4::obj2)

if(extends_type_of(obj2,obj_parent).eqv. .false.) then
print*,'pass'
else
print*,104
endif
end block
if(extends_type_of(obj,obj_parent).eqv. .false.) then
call ss(obj)
else
 print*,101
endif
end block
end

subroutine ss(dd)
use m1
class(ty) :: dd
block
type,extends(ty) :: ty2
 integer :: ii2
end type

class(ty),allocatable :: oo
allocate(ty2:: oo)
if(extends_type_of(oo,dd) .neqv. .false.) print*,110
end block
end subroutine
