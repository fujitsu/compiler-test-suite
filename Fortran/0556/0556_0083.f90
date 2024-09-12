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
integer function f1(d1)
import ty
class(ty) :: d1
end function
end interface

procedure(prc),pointer :: ttt
obj%ii =100 
ttt=>fun
obj%ttt=>fun
print*, f1(obj)
print*, obj%ttt(kk)
print*, fun(obj,kk)
if(obj%ttt(kk) .NE. 5 ) print *, "Err -1"
print*, "Pass"
end

integer function f1(d1)
use mod1 
class(ty) :: d1
f1= d1%ii
end function

function fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
fun   = a
dmy%ii = a 
end function
