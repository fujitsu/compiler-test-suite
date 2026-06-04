module mod
interface 
  module subroutine s1
  end
end interface
end

submodule (mod) smod
type :: ty
integer :: ii
end type
end 

 
submodule (mod:smod) smod2
end
 
submodule (mod:smod2) smod3
contains
  module subroutine s1
  class(ty),pointer :: cptr
  allocate(cptr)
end
end 

use mod
call s1
print*,"sngg226o : pass"
end

