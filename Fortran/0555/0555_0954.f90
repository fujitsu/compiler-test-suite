module mod1
 
type ty
integer :: ii
procedure(prc),pointer,pass :: ttt
end type

type ty1
integer ::jj 
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
type(ty1) :: tobj
interface
subroutine fun(dmy , a)
use mod1
class(ty) ::dmy
integer :: a
end subroutine
end interface
tobj%obj%ii =100
tobj%obj(5)%ttt => fun
call tobj%obj(5)%ttt(kk)
end
 
subroutine fun(dmy, a)
use mod1
class(ty) ::dmy
integer :: a
dmy%ii =dmy%ii+a
if(105 .NE. dmy%ii) print*, "Error"
print*, "Pass"
end subroutine


