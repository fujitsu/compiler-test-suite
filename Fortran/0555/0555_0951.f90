module mod1
 
type ty
integer ::ii 
procedure(prc),pointer, pass(dmy) :: ttt
end type
 
interface
function prc(a,dmy)
import ty
class(ty) ::dmy
integer :: a
integer :: prc
end function
end interface
end module
 
 
 
program main

use mod1
integer :: kk = 5
type(ty) :: obj(10)
 integer :: ll
 
interface
function fun(a, dmy)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
end function
end interface
obj%ii =400 
obj(2)%ttt => fun
ll = obj(2)%ttt(kk)
if(5 .NE. ll) print*, "Error"
print*,"Pass"
end
 
function fun(a, dmy)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
dmy%ii =a
fun = dmy%ii
end function
