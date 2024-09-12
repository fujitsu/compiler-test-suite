module mod1
type ty1
integer :: ii
contains
generic:: gnr => prc,prc1,prc2
procedure,NOPASS,PRIVATE :: prc=>fun1
procedure,NOPASS,PRIVATE :: prc1=>fun2
procedure,NOPASS,PRIVATE :: prc2=>fun3
end type

type ty2
integer :: ii
contains
procedure,NOPASS :: prc=>fun1
procedure,NOPASS,PRIVATE :: prc1=>fun2
procedure,NOPASS,PRIVATE :: prc2=>fun3
generic,PRIVATE:: gnr => prc,prc1,prc2
end type 
 
contains
function fun()
type(ty1) :: obj
obj%ii=10
print*,obj%gnr(1,2)
fun = 10
end function

function fun1(a)
integer ::a, fun1
fun1 = a
end function

function fun2(a,b)
integer ::a,b, fun2
fun2 = a+ b
end function

function fun3(a,b,c)
integer ::a,b,c, fun3
fun3 = a+b+c
end function
end module
 
use mod1
type(ty1) :: obj
type(ty2) :: obj2
obj%ii=10
obj2%ii=10
if(obj%gnr(1).NE.1)       print*, "Error -1"
if(obj%gnr(1,2).NE. 3)    print*, "Error -2"
if(obj%gnr(1,2,3) .NE.6 ) print*, "Error -3"
if(obj2%prc(1) .NE. 1)    print*, "Error -4"
print*, "Pass"
end

