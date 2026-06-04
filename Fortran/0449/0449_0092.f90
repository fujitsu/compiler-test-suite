module mod1
type ty
integer :: ii = 20
contains
final :: f1
end type
integer :: ff=1
interface 
subroutine sub(nn)
integer :: nn
end subroutine
subroutine f2()
end subroutine
end interface
contains
subroutine f1(dmy)
type(ty),intent(in) :: dmy(:,:)
if (any(dmy%ii/=20)) print *,801
call f2()
end subroutine
end module
use mod1
call sub(2)
if(ff .NE. 2) print*,122
print*,"pass" 
end
subroutine sub(nn)
use mod1
integer :: nn
type(ty) :: arr(nn,nn)
end subroutine

subroutine f2()
use mod1
ff = ff + 1
end subroutine
