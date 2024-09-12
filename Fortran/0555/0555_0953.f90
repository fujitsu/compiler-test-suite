module mod1
 
type ty
integer :: ii
procedure(prc),pointer,pass :: ttt
end type

type ty1
type(ty) :: obj
end type 
 
interface
function prc(dmy,a)
import ty
class(ty) ::dmy
integer :: a, prc
end function
end interface
end module
 
 
program main

use mod1
integer :: kk = 5
type (ty1) ::obj1
 
interface
function fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a, fun
end function
end interface
obj1%obj%ii = 500
obj1%obj%ttt => fun
if(5 .NE. obj1%obj%ttt(kk)) print*, "Error"
print*, "Pass"
end
 
function fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a, fun
dmy%ii =a
fun=dmy%ii

end function


