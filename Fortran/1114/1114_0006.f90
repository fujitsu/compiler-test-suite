module mod1
type tt
integer :: jj = 30
end type
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
elemental subroutine f1(dmy)
type(ty),intent(in) :: dmy
call f2()
end subroutine
end module
use mod1
call sub1(2)
if(ff .NE. 4) print*,121
print*,"Pass" 
end
subroutine sub(nn)
use mod1
integer :: nn
ENTRY sub1(nn)
type(ty) :: arr(nn)
type(tt) :: crr(nn)
type(ty) :: brr(nn)
end subroutine

subroutine f2()
use mod1
ff = ff + 1
end subroutine
