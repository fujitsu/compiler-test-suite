module mod1
type ty
integer :: ii = 20
contains
final :: f1
end type
integer :: ff
interface 
subroutine sub()
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
call sub()
if(ff .NE. 1) print*,122
print*,"Pass" 
end
subroutine sub()
use mod1
ENTRY sub1()
type(ty),allocatable :: arr(:)
allocate(arr(2))
arr%ii = 30
end subroutine

subroutine f2()
use mod1
ff = ff + 1
end subroutine
