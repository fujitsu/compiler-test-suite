module mod1
 type ty1
contains
generic,PRIVATE:: gnr => prc,prc1
procedure,NOPASS,PRIVATE :: prc=>fun1
procedure,NOPASS :: prc1=>fun2
end type
type, extends(ty1)::ty2
contains
procedure,NOPASS,PRIVATE :: prc=>fun3
end type 
contains
function fun()
type(ty1) :: obj
integer :: fun
if((obj%gnr(1).EQ.1) .AND. &
   (obj%gnr(1,2).EQ.3)) then
       print*,"pass"
else
    print*, "fail"
endif

fun = obj%prc(0)
end function

function fun1(a)
integer ::a, fun1
fun1 = a
end function

function fun2(a,b)
integer ::a,b, fun2
fun2 = a+ b
end function

function fun3(a)
integer ::a, fun3
fun3 = a+3
end function

end module

use mod1
integer ::i
i = fun()
end

