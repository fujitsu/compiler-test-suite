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
class(ty), pointer :: obj(:)
 
interface
function fun(a, dmy)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
end function
end interface
 
allocate(obj(2))
obj%ii=300
obj(2)%ttt => fun
if(300 .NE. obj(2)%ttt(kk)) print*, "Error"
print*, "Pass"
end
 
function fun(a, dmy)
use mod1
class(ty) ::dmy
integer :: a
integer :: fun
a=0
fun =dmy%ii+a
end function


