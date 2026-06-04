module mod
type :: ty
integer :: mm
end type
end
module m2
use mod,tt=>ty
type :: ty
integer :: ii
end type
end 

 
module m3
use m2
type,extends(ty) :: ty1
integer :: kk
end type
end
 
module m4
use m3
contains
  subroutine s2
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
end
end 

use m4
call s2
print*,"sngg219o : pass"
end

