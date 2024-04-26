module mod1
type ty
integer::i
contains
procedure,nopass :: prc1 => fun1
procedure,nopass :: prc2 => fun2
procedure,pass(dmy) :: prc3 => fun3
generic :: gnr=>prc1,prc2,prc3
end type

contains
function fun1(arg1,dmy,arg2)
class(ty) :: dmy
integer :: arg1,arg2
integer :: fun1
fun1 = arg1+arg2+dmy%i
end function

function fun2(arg1,arg2,arg3,dmy)
class(ty) :: dmy
integer :: arg1,arg2,arg3
integer :: fun2
fun2 = arg1+arg2+arg3+dmy%i
end function

function fun3(dmy,arg1)
class(ty) :: dmy
integer :: arg1
integer :: fun3
if(sizeof(dmy)/=4) print*,'201'
fun3 = arg1+dmy%i
end function
end module

use mod1
type(ty) :: obj
obj%i=5

associate(tp=>obj%gnr(10,2,3,obj))
 if(tp .NE. 20) print*,"101"

 associate(tp2=>obj%gnr(25))
  if(tp2 .NE. 30) print*,"102"
 end associate

 associate(tp3=>obj%gnr(3,obj,2))
  if(tp3 .NE. 10) print*,"103"
 end associate
end associate
print*,"pass"

end
