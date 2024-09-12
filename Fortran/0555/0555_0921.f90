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

procedure(prc),pointer :: ttt
obj%ii =100 
ttt=>fun
obj%ttt=>fun
print*, obj%ttt(kk)
print*, "Pass"
end
 
function fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
fun = a
end function


