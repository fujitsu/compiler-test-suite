module mod1
type ty
integer :: ii
contains
procedure :: add_same
generic :: operator(.plus.) =>  add_same
end type
type, extends(ty)::ty1
 contains
procedure :: add_const
generic, PUBLIC :: operator(.plus.) => add_const
end type
contains
function add_const(a,b)
 integer,intent(in) :: b
 class(ty1),INTENT(IN) :: a
 type(ty1) :: add_const
 add_const%ii = a%ii + b
 print *,"add_const"
END function
function add_same(a,b)
 class(ty),INTENT(IN) :: a
 class(ty),INTENT(IN) :: b
 type(ty) :: add_same
 add_same%ii = a%ii + b%ii
 print *,"add_same"
END function
end module

use mod1
type(ty1) :: obj
type(ty1) :: j
j%ii = 10
obj =  j .plus. 10
if(obj%ii .NE. 20) print*,"fail"
print*,"pass"

end

