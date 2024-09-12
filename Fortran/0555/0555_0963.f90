interface
function fun2() bind(C)
USE, INTRINSIC :: ISO_C_BINDING
INTEGER(C_INT) :: fun2
end function
end interface

integer :: ii
ii = fun(fun2);
if (ii .NE. 10)print*, "Error"
print*, "Pass"
contains

integer function  fun(d1)
interface
function d1() bind(C)
USE, INTRINSIC :: ISO_C_BINDING
INTEGER(C_INT) :: d1
end function
end interface
fun =10
end function

end

function fun2() bind(C)
USE, INTRINSIC :: ISO_C_BINDING
INTEGER(C_INT) :: fun2
print*, "fun2"
fun2=10
end function


