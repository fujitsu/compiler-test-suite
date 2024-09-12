module mod1
 
type ty
integer :: ii
procedure(prc),pointer,pass(dmy) :: ttt
end type
 
interface
subroutine prc(a, dmy)
import ty
class(ty) ::dmy
integer :: a
end subroutine 
end interface
end module
 
 
program main

use mod1
integer :: kk = 5
type(ty) :: obj(10)
 
interface
subroutine fun(a,dmy)
use mod1
class(ty) ::dmy
integer :: a
end subroutine
end interface
obj%ii =200
obj(2)%ttt => fun
call obj(2)%ttt(kk)
 
end
 
subroutine fun(a,dmy)
use mod1
class(ty) ::dmy
integer :: a
dmy%ii=dmy%ii+a
if(dmy%ii .NE. 205) print*, "Error"
print*, "Pass"

end subroutine


