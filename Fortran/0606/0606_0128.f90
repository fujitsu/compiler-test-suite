module mod1
type ty
integer :: ii
contains
procedure :: ADD => add_same
generic :: operator(+) => ADD
end type

type, extends(ty)::ty1
integer :: jj
end type

contains
function add_const(a,b)
 integer,intent(in) :: b
 class(ty1),INTENT(IN) :: a
 type(ty1) :: add_const
 add_const%ii = a%ii + b
 add_const%jj = a%ii + b
end function

function add_same(a,b)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 type(ty1) :: add_same
 add_same%ii = a%ii + b
 add_same%jj = a%ii + b
end function
end module

use mod1
type(ty1) :: obj1, obj2
obj1%ii = 10
obj1%jj = 10
obj2  =  obj1+10
if(obj2%ii .NE. 20) print*,"Error"
print*,"pass"
end
