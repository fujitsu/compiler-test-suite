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
  class(ty),pointer :: p
  type,extends(ty)::ty2
    integer::k
  end type
  class(ty),pointer :: p2
  allocate(p)
  allocate(ty2::p2)
  if (.not.extends_type_of(p2,p)) print *,1001
  if (same_type_as(p2,p)) print *,1002
end
end 

use mod
call s1
print*,"sngg238o : pass"
end

