module mod1

type ty
integer :: ii
contains
procedure :: ADD => add_same
generic :: operator(-) => ADD
end type

contains
function add_same(a,b)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN)  :: b
 type(ty) :: add_same
 add_same%ii = a%ii - b
end function
end module

module m2
use mod1
type, extends(ty)::ty1
integer :: jj
end type

type, extends(ty1)::ty2
integer :: kk
end type
end  module m2

use mod1
use m2
type(ty2) :: obj_type3 
type(ty)  :: obj_type1
class(ty), allocatable  :: ptr
obj_type3%ii = 30
obj_type3%jj = 30
obj_type3%kk = 30
allocate(ptr, source=obj_type3)
obj_type1  =  ptr - 10
if(obj_type1%ii .NE. 20) print*,"fail"
print*,"pass"
end
