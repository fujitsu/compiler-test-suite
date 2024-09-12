module mod1
type ty1
integer :: ii
contains
generic :: gnr => prc,prc1
procedure,NOPASS,PRIVATE :: prc=>fun1
procedure,NOPASS ::         prc1=>fun2
end type

contains
function fun()
type(ty1) :: obj
integer :: fun
obj%ii=10
if((obj%gnr(1).EQ.1) .AND. &
   (obj%gnr(1,2).EQ.3)) then
       print*,"Pass -2"
else
    print*, "Error -2"
endif
fun = obj%prc(5)
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
type, extends(ty1)::ty2
contains
procedure,NOPASS :: prc =>fun3
end type
type(ty2) :: obj
obj%ii=10

if((obj%gnr(5).EQ.5) .AND. &
   (fun().EQ. 5)) then
    print*, "Pass -1"       
else
    print*, "Error -1"
endif
end 
