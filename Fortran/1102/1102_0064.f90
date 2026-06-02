module mod
interface 
  module subroutine s1
  end
end interface
type :: ty
integer :: ii
end type
end

submodule (mod) smod
end
 
submodule (mod:smod) smod3
contains
  module subroutine s1
  class(ty),pointer :: cptr
  allocate(cptr)
end
end 

use mod
call s1
print*,"sngg233o : pass"
end

