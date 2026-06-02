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
contains
subroutine foox
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
write(6,*) obj%ii+obj%kk
end
end
 
submodule (mod:smod2) smod3
contains

module procedure s1
class(ty),pointer :: cptr
type(ty1),target :: obj
obj%ii=1
obj%kk=2
cptr=>obj
if (obj%ii+obj%kk/=3) print *,801
end
end 

use mod
call s1
print*,"sngg883h : pass"
end

