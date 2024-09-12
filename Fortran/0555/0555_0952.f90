module mod1
 
type ty
integer :: ii
procedure(prc),pointer,pass :: ttt
end type

type ty1
type(ty) :: obj
end type 
 
interface
function prc(dmy)
import ty
class(ty) ::dmy
integer :: prc
end function
end interface
end module
 
 
program main

use mod1
integer :: kk = 5
type (ty1) ::obj1
 
interface
function fun(dmy)
use mod1
class(ty) ::dmy
integer :: fun
end function
end interface
obj1%obj%ii = 500
obj1%obj%ttt => fun
kk=kk+5
if(10 .NE. obj1%obj%ttt()) print*, "Error"
print*, "Pass"
 
end
 
function fun(dmy)
use mod1
class(ty) ::dmy
integer :: fun
dmy%ii =10
fun=dmy%ii
end function


