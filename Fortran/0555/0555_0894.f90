module mod1
type ty
integer :: ii
contains
procedure ,  pass(pass) :: prc1 => fun1
procedure ,  pass(pass) :: prc2 => fun2
procedure ,  nopass     :: prc4 => fun4
procedure ,  pass       :: prc3 => fun3
generic   :: gnr=> prc4,prc2,prc1,prc3
end type
 
contains
function fun1(arg1,pass,arg2)
class(ty) :: pass
integer :: arg1,arg2
integer :: fun1
fun1 = 10+arg1+arg2+pass%ii
fun1 = 10
end function

function fun2(arg1,arg2,arg3,pass)
class(ty) :: pass
integer :: arg1,arg2,arg3
integer :: fun2
fun2 = 20+arg1+arg2+arg3+pass%ii
fun2 = 20
end function

function fun3(pass,arg1)
class(ty) :: pass
integer :: arg1
integer :: fun3
fun3 = 30+arg1+pass%ii
fun3 = 30
end function

function fun4(pass,arg1)
class(ty) :: pass
integer :: arg1
integer :: fun4
fun4 = 40+arg1+pass%ii
fun4 = 40
end function
end module

use mod1
type(ty) :: obj

type :: new 
type(ty) :: obj(10)
end type  

type(new) :: newobj(10)

obj%ii=10
newobj(1)%obj%ii=10
if(obj%gnr(obj,1) .NE. 40) print*,"Err 4"
if(newobj(1)%obj(1)%gnr(1,2) .NE. 10) print*,"Err 1"
if(newobj(1)%obj(1)%gnr(1,2,3) .NE. 20) print*,"Err 2"
if(obj%gnr(1) .NE. 30) print*,"Err 3"
print*,"Pass "
end
