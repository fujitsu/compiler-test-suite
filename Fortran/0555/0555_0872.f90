module mod1
type ty1
contains
procedure,NOPASS,PRIVATE :: prc=>fun1
generic,PRIVATE :: gnr=>prc
end type
 
contains
function fun()
type(ty1) :: obj
integer :: fun
fun = obj%gnr(2)
end function

function fun1(a)
integer ::a, fun1
fun1 = a
end function
end module

use mod1
if(fun().EQ.2) then
    print*,"pass"
else
    print*, "fail"
endif   
end
