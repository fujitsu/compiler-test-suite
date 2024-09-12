module mod1
type ty
integer :: ii
contains
procedure :: prc => fun
generic :: operator(+) => prc
end type
contains
function fun(a,b)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 type(ty) :: fun 
 
fun%ii = a%ii + b
print * ,"FUN"
END function

subroutine fun1()
type(ty) :: obj
type(ty) :: obj_1
obj_1%ii = 10
obj =  obj_1 + 10
if(obj%ii .NE. 20) print*,"fail"
print*,"pass"
end subroutine
end module
use mod1
call fun1()
end

