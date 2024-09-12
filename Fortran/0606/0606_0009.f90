module mod1

type,abstract :: ty
integer :: ii
contains
procedure(abs1),deferred :: prc
procedure(abs2),deferred :: prc1
generic :: operator(+) => prc,prc1
generic :: gnr => prc,prc1
end type

type,extends(ty) :: ty1
integer :: jj
contains
procedure :: prc=>f1
procedure :: prc1=>f2
end type

interface
function abs1(dmy,ii)
import ty
class(ty),intent(in) :: dmy
real,intent(in) :: ii
integer :: abs1
end 
function abs2(dmy,ii)
import ty
class(ty),intent(in) :: dmy
integer :: abs2
integer,intent(in) :: ii
end 
end interface

contains

function f1(dmy,ii)
class(ty1),intent(in) :: dmy
real,intent(in) :: ii
integer :: f1
f1 =10 + dmy%ii + ii
end function 

function f2(dmy,ii)
class(ty1),intent(in) :: dmy
integer,intent(in) :: ii
integer :: f2
f2 = dmy%ii + ii + 10

end function

end module
use mod1
class(ty),pointer :: cptr
type(ty1),target :: obj
integer res
cptr=>obj
obj%ii=0
res = cptr + 10
print*, res 
if(res .NE. 20) then
print*,'error1'
endif
print*,"Pass"
end
