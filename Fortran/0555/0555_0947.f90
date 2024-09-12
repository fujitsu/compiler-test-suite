module mod1
 
type ty
integer :: ii
procedure(prc),pointer,pass(dmy) :: ttt
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
type(ty) :: obj
 
interface
function fun(a, dmy)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
end function
end interface
obj%ii=200
obj%ttt => fun

if(200 .NE. obj%ttt(kk)) print*, "Error"
print*, "Pass"
print*,obj%ttt(kk)
 
end
 
function fun(a, dmy)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
fun = a
fun = dmy%ii 
end function


