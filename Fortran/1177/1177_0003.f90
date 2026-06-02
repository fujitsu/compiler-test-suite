module m1
type,abstract :: ty
integer :: ii
contains
procedure(abs1),deferred :: prc
generic :: assignment(=) => prc
generic :: gnr => prc
end type

contains  
subroutine abs1(dmy,ii)
class(ty),intent(out) :: dmy
integer,intent(in) :: ii
end 
end 

 
module m2
use m1
type,extends(ty) :: ty1
integer :: jj
contains
procedure :: prc=>f1
end type

contains
subroutine f1(dmy,ii)
class(ty1),intent(out) :: dmy
integer,intent(in) :: ii
dmy%ii = ii
end
end
 
module m3
use m2
contains
subroutine s1
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
!call cptr%gnr(10)
cptr = 10 
if(cptr%ii .NE. 10) then
print*,'error1',cptr%ii
endif
end
end

use m3
call s1
print*,"sngg864h : pass"
end

