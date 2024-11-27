module m1
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2=20
end type
end module

use m1
interface
subroutine ss(dd,dmy)
import ty2
class(ty2),intent(out) :: dd
class(ty2) :: dmy(:)
end subroutine
end interface

class(ty2),allocatable :: obj_parent,obj
allocate(ty2::obj_parent)

block
allocate(ty2::obj)
if(extends_type_of(obj,obj_parent).eqv. .true.) then
 select type(obj)
 typeis(ty2)
 if(obj%ii2==20) print*,'pass'
 call ss(obj,[obj,obj])
 if(obj%ii2/=200) print*,201
 end select
else
 print*,101
endif
end block
end

subroutine ss(dd,dmy)
use m1
class(ty2),intent(out) :: dd
class(ty2) :: dmy(:)
block
type,extends(ty) :: ty3
 integer :: ii2=200
end type

class(ty),allocatable :: oo
allocate(ty3:: oo)
if(extends_type_of(oo,dd) .neqv. .false.) print*,203,extends_type_of(oo,dd)
if(extends_type_of(oo,dmy) .neqv. .false.) print*,202,extends_type_of(oo,dd)
select type(oo)
type is(ty3)
dd%ii2=oo%ii2
end select
end block
end subroutine
