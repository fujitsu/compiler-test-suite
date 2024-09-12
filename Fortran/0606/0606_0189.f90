module mod1
type ty
integer :: ii
contains
procedure :: ADD => add_same
generic :: operator(.plus.) => ADD
end type

type, extends(ty)::ty1
integer :: jj
contains
procedure :: ADD => add_const
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
 print *,"add_same"
end function
end module

use mod1
type(ty1) :: j, obj
j%ii = 10
obj =  j .plus. 10  
if(obj%ii .NE. 20) print*,"Error"
print*,"pass"
end
