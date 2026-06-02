module mod
interface 
  module subroutine s1
  end
end interface
!type :: ty
!integer :: mm
!end type
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
  module subroutine s1
class(ty),pointer :: cptr
type(ty1),target :: obj
cptr=>obj
end
end 

use mod
call s1
print*,"sngg224o : pass"
end

