module mod1
type ty
integer :: ii
contains
procedure,nopass :: prc1 => fun1
procedure,pass(dmy) :: prc2 => fun2
procedure,pass(dmy) :: prc3 => fun3
generic :: gnr=>prc1,prc2,prc3
end type
 
contains
function fun1(arg1,dmy,arg2)
class(ty) :: dmy
integer :: arg1,arg2
integer :: fun1
fun1 = 10+arg1+arg2+dmy%ii
end function
function fun2(arg1,arg2,arg3,dmy)
class(ty) :: dmy
integer :: arg1,arg2,arg3
integer :: fun2
fun2 = 20+arg1+arg2+arg3+dmy%ii
end function
function fun3(dmy,arg1)
class(ty) :: dmy
integer :: arg1
integer :: fun3
fun3 = 30+arg1+dmy%ii
end function
end module
use mod1
type(ty) :: obj
obj%ii=10
if(obj%gnr(1,2,3) .NE. 36) print*,"Err 1"
print*,"Pass"
end

