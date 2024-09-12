module mod1
type ty
integer :: ii
contains
procedure :: ADD => add_same
procedure , NOPASS :: add_const 
generic :: operator(+) => ADD
generic :: gnr => ADD, add_const 
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
 add_const%jj = a%jj + b
end function

function add_same(a,b)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 type(ty1) :: add_same
 add_same%ii = a%ii + b
 add_same%jj = 0
end function
end module

use mod1
type(ty1) :: obj1, obj2, obj3, obj4
obj1%ii =  10
obj1%jj =  20
obj2    =  obj1+10  
if(obj2%ii .NE. 20) print*, "Error -1"    
obj3 = obj1%gnr(50)                       
if(obj3%ii .NE. 60) print*, "Error -2"
obj4 = obj4%gnr(obj3,10)
if(obj4%ii .NE. 70) print*, "Error -3"
print*,"pass"
end
