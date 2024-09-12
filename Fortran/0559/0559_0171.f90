module mod1
type ty(k1)
integer,kind :: k1
integer(kind = k1) :: ii
contains
procedure :: ADD => add_same
generic :: operator(+) => ADD
end type

type, extends(ty)::ty1(k2)
integer,kind :: k2
integer(kind = k2) :: jj
end type

contains
function add_const(a,b)
 integer,intent(in) :: b
 class(ty1(2,2)),INTENT(IN) :: a
 type(ty1(2,2)) :: add_const
 add_const%ii = a%ii + b
end function

function add_same(a,b)
 class(ty(2)),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 type(ty1(2,2)) :: add_same
 add_same%ii = a%ii + b
 add_same%jj = a%ii + b
end function
end module

use mod1

class(ty(2)), pointer :: ptr
type(ty1(2,2)), target :: obj1
type(ty1(2,2)) :: obj2
obj1%ii = 10
obj1%jj = 10
ptr => obj1
obj2 =  ptr+10
if(obj2%ii .NE. 20) print*,"Error"
print*,"pass"
end


