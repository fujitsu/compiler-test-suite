module mod1
 
type ty
integer :: ii
procedure(prc),pointer,pass :: ttt
end type
 
interface
function prc(dmy,a)
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
 
interface
function fun(dmy , a)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
end function
end interface
 
obj(1)%ttt => fun
obj(1)%ii = 10
if(15 .NE. obj(1)%ttt(kk))print*, "Error"
print*, "Pass"
end
 
function fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
fun = a+dmy%ii
end function


