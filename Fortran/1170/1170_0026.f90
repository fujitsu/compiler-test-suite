module mod
interface 
  module subroutine s1
  end
end interface
type :: ty
integer :: k
end type
end

submodule (mod) smod
  type,extends(ty)::ty2
    integer::k1
  end type
end 

 
submodule (mod:smod) smod2
  type,extends(ty2)::ty3
    integer::k2
  end type
end
 
submodule (mod:smod2) smod3
contains
  module subroutine s1
  class(ty),pointer :: p
  class(ty),pointer :: p2
  type,extends(ty3)::ty4
    integer::k3
  end type
  allocate(p)
  allocate(ty4::p2)
  if (.not.extends_type_of(p2,p)) print *,1001
  if (same_type_as(p2,p)) print *,1002
end
end 

use mod
call s1
print*,"sngg365o : pass"
end

