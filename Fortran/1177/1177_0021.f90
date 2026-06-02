module mod
interface 
  module subroutine s1
  end
end interface
type :: ty
integer :: mm
end type
end

submodule (mod) smod
type :: ty
integer :: ii
end type
end 

 
submodule (mod:smod) smod2
type,extends(ty) :: ty1
integer :: kk
end type
end
 
submodule (mod:smod2) smod3
contains

module procedure s1
class(ty),pointer :: cptr
type(ty1),target :: obj 
obj%ii=1
obj%kk=3
cptr=>obj
if (obj%ii+obj%kk/=4) print *,101
end
end 

use mod
call s1
print*,"sngg884h : pass"
end

