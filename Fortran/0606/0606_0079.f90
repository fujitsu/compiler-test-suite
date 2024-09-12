module mod1
type ty
integer :: ii
contains
procedure :: prc => fun
generic :: operator(+) => prc
end type
contains
function fun(a,b)
 class(ty),INTENT(IN) :: a
 class(ty),INTENT(IN) :: b
 type(ty) :: fun 
 
fun%ii = a%ii + b%ii
print * ,"FUN"
END function

end module
use mod1
type(ty) :: obj
type(ty) :: obj_1
type(ty) :: obj_2
obj_1%ii = 10
obj_2%ii = 10
obj =  obj_1 + obj_2
if(obj%ii .NE. 20) print*,"fail"
print*,"pass"
end

