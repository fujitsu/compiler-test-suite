module mod1
 
type ty
integer :: ii
procedure(prc),pointer,pass :: ttt
end type

type ty1
type(ty) :: obj(10)
end type 
 
interface
subroutine prc(dmy,a)
import ty
class(ty) ::dmy
integer :: a
end subroutine 
end interface
end module
 
 
program main

use mod1
integer :: kk = 5
type (ty1) ::obj1
 
interface
subroutine fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
end subroutine
end interface
obj1%obj%ii = 500
obj1%obj(1)%ttt => fun
call obj1%obj(1)%ttt(kk)
 
end
 
subroutine fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
dmy%ii = a
if(dmy%ii .NE. a) print*, "Error" 
print*, "Pass"
end subroutine


