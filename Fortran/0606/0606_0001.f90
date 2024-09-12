module mod1
type ty
integer :: ii
contains
procedure :: ADD => add_same
generic :: operator(*) => ADD
generic :: gnr => ADD
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

type(ty1) :: obj_type2
type(ty)  :: obj_type1
type(ty)  :: obj
obj_type2%ii =  10
obj_type1 =  obj_type2*10

if(obj_type1%ii .NE. 100)  print*, "Error -1"
obj =obj_type2%gnr(50)
if(obj%ii .NE. 500)        print*, "Error -2"
print*,"pass"
end
