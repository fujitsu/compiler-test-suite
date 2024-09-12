module mod1
 
type ty
procedure(prc),pointer, NOPASS:: ttt
end type
 
interface
subroutine prc(a)
integer :: a
end subroutine 
end interface
end module
 
 
program main

use mod1
integer :: kk = 5
type(ty) :: obj
 
interface
subroutine fun(a)
integer :: a
end subroutine
end interface
obj%ttt => fun
call obj%ttt(kk)
end
 
subroutine fun(a)
integer :: a
if(5 .NE. a) print*, "Error" 
print*, "Pass"
end subroutine


