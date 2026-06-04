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
  m=0
  select type(cptr)
   type is(ty)
    m=1
  end select
  if (m/=1) print *,100
end
end 

use mod
call s1
print*,"sngg255o : pass"
end

