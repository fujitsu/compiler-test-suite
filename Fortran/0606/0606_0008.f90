module mod1

type,abstract :: ty
integer :: ii
contains
procedure(abs1),deferred :: prc
procedure(abs2),deferred :: prc1
generic :: assignment(=) => prc,prc1
generic :: gnr => prc,prc1
end type

type,extends(ty) :: ty1
integer :: jj
contains
procedure :: prc=>f1
procedure :: prc1=>f2
end type

interface
subroutine abs1(dmy,ii)
import ty
class(ty),intent(out) :: dmy
real,intent(in) :: ii
end subroutine
subroutine abs2(dmy,ii)
import ty
class(ty),intent(out) :: dmy
integer,intent(in) :: ii
end subroutine
end interface

contains
subroutine f1(dmy,ii)
class(ty1),intent(out) :: dmy
real,intent(in) :: ii
dmy%ii = ii
end subroutine

subroutine f2(dmy,ii)
class(ty1),intent(out) :: dmy
integer,intent(in) :: ii
dmy%ii = ii + 10
end subroutine

end module
use mod1
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
cptr = 10
if(cptr%ii .NE. 20) then
print*,'error1'
endif
print*,"Pass"
end
