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
module subroutine abs1(dmy,ii)
class(ty),intent(out) :: dmy
real,intent(in) :: ii
end 

module subroutine abs2(dmy,ii)
class(ty),intent(out) :: dmy
integer,intent(in) :: ii
end
 
module subroutine f1(dmy,ii)
class(ty1),intent(out) :: dmy
real,intent(in) :: ii
end 
 
module subroutine f2(dmy,ii)
class(ty1),intent(out) :: dmy
integer,intent(in) :: ii
end
end interface
end

submodule (mod1) smod
 
contains
module procedure abs1
end 

module procedure abs2
end
 
module procedure f1
dmy%ii = ii
end 
 
module procedure f2
dmy%ii = ii + 10
end 
 
end 

use mod1
interface  assignment(=)
procedure :: sss
end interface
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
!call cptr%gnr(10)
cptr = 10              !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
if(cptr%ii .NE. 20) then
print*,'error1'
endif
cptr = 'a'
print*,"pass"
contains
subroutine sss(i1,i2)
class(ty),pointer,intent(inout) :: i1
character,intent(in) :: i2
if (i2.ne.'a') print *,'err'
end
end

