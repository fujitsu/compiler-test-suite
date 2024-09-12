module mod1
 
type ty
integer ::ii 
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
type(ty) :: obj
 
interface
function fun(dmy , a)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
end function
end interface
obj%ii =100 
obj%ttt => fun
if(100 .NE. obj%ttt(kk)) print*, "Error"
print*, "Pass"

end
 
function fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
a=10
fun = dmy%ii
end function


