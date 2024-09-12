module mod1

type ty1
integer :: ii
contains
generic :: gnr => prc,prc1
procedure,NOPASS,PRIVATE :: prc=>fun1
procedure,NOPASS ::         prc1=>fun2
end type

type, extends(ty1)::ty2
contains
procedure,NOPASS,PRIVATE :: prc =>fun3
generic :: gnr => prc
end type

contains
function fun()
type(ty2) :: obj
integer :: fun
obj%ii=10
if((obj%gnr(1).EQ.4) .AND. &
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
if(fun() .NE. 3) print*,"121"
end 
