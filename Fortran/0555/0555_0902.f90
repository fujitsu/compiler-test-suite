module mod1
type ty1
contains
generic:: gnr => prc,prc1
procedure,NOPASS, PRIVATE :: prc  =>fun1 
procedure,NOPASS, PRIVATE :: prc1 =>fun2 
end type

type, extends(ty1)::ty2
integer :: ii
contains
procedure,NOPASS,PRIVATE :: prc1 =>fun3 
procedure,NOPASS,PRIVATE :: prc  =>fun4 
end type 
 
contains
function fun()
fun = 10
end function

function fun1(a)
integer ::a, fun1
fun1 = a
end function

function fun4(a)
integer ::a, fun4
fun4 = a
end function

function fun2(a,b)
integer ::a,b, fun2
fun2 = a+ b        
end function

function fun3(a,b)
integer ::a,b, fun3
fun3 = a+b
end function
end module
 
use mod1
type(ty2) :: obj2
obj2%ii=10
if(obj2%gnr(7) .NE. 7) print*, "Error -1" 
if(obj2%gnr(1,2) .NE. 3) print*, "Error -2"
print *, "Pass" 
end
