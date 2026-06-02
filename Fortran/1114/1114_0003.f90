module mod1
type ty
integer :: ii = 20
contains
final :: f1
end type
integer :: ff
interface 
subroutine sub(nn)
integer :: nn
end subroutine
pure subroutine f2()
end subroutine
end interface
contains
subroutine f1(dmy)
type(ty),intent(in) :: dmy(:)
if(any((dmy%ii) /= (/30,30/))) print*,121
call f2()
end subroutine
end module
use mod1
call sub1(2)
if(ff .NE. 1) print*,122
print*,"Pass" 
end
subroutine sub(nn)
use mod1
integer :: nn
ENTRY sub1(nn)
type(ty) :: arr(nn)
arr%ii = 30
end subroutine

subroutine f2()
use mod1
ff = ff + 1
end subroutine
