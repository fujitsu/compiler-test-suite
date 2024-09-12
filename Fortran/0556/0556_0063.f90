module mod1
type ty
integer :: ii
contains
procedure,pass(dmy) :: prc1 => fun1
procedure,nopass :: fun2
procedure,pass(dmy) :: prc3 => fun3
generic :: gnr=>prc1,prc3,fun2
end type
 
contains

function fun1(arg1,arg2,dmy,arg3)
class(ty) :: dmy
integer :: arg1,arg2,arg3
integer :: fun1
fun1 = 10+arg1+arg2+arg3+dmy%ii
fun1 = 10
end function

function fun2(arg1,arg2,arg3,dmy)
class(ty) :: dmy
integer :: arg1,arg2,arg3
integer :: fun2
fun2 = 20+arg1+arg2+arg3+dmy%ii
end function

function fun3(arg1,arg2,arg3,arg4,dmy)
class(ty) :: dmy
integer :: arg1
integer :: arg2
integer :: arg3
integer :: arg4
integer :: fun3
fun3 = 30+arg1+arg2+arg3+arg4+dmy%ii
fun3 = 30
end function

end module
use mod1
type(ty) :: obj
obj%ii=10
if(obj%gnr(1,2,3,4) .NE. 30) print*,"Err 1"
print*,"Pass"
end



