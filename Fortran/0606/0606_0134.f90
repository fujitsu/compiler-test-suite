module mod1
type ty
integer :: ii
contains
procedure :: ADD => add_same
generic :: operator(*) => ADD
end type

contains
function add_same(a,b)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 type(ty) :: add_same
 add_same%ii = a%ii*b
end function
end module

use mod1
type, extends(ty)::ty1
integer :: jj
end type
class(ty), pointer :: ptr
type(ty1),target :: obj_type2
type(ty)  :: obj_type1
obj_type2%ii =  10
ptr => obj_type2
obj_type1 =  ptr*10
if(obj_type1%ii .NE. 100) print*,"Error"
print*,"pass"
end
