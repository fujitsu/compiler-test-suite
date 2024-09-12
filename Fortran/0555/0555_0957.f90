module mod1
type ty
integer :: ii
procedure(prc),pointer,pass :: ttt
end type

type ty1
type(ty) :: obj
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
obj1%obj%ii = 400
obj1%obj%ttt => fun
call obj1%obj%ttt(kk)
end
 
subroutine fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
dmy%ii = a
if(dmy%ii .NE. a) print*, "Error" 
print*, "Pass"
end subroutine


