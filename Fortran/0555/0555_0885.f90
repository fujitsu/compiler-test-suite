module mod1
type ty1
contains
procedure,NOPASS,PRIVATE :: prc=>fun1
end type
type, extends(ty1)::ty2
contains
procedure,NOPASS,PRIVATE :: prc=>fun2
end type 
contains
function fun()
type(ty2) :: obj
integer :: fun
fun = obj%prc(0)
end function

function fun1(a)
integer ::a, fun1
fun1 = a + 1
end function

function fun2(a)
integer ::a, fun2
fun2 = a+2
end function

end module

use mod1
if(fun().EQ.2) then
    print*,"pass"
else
    print*, "fail"
endif   
end

