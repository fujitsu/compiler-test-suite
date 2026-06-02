module mod
interface 
  module subroutine s11
  end
  module subroutine s12
  end
  module subroutine s13
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
  module subroutine s11
  class(ty2),pointer :: p
  class(ty2),pointer :: p2
  type,extends(ty3)::ty4
    integer::k3
  end type
  allocate(p)
  allocate(ty4::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (same_type_as(p2,p)) print *,1012
end
  module subroutine s12
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
  module subroutine s13
  class(ty3),pointer :: p
  class(ty3),pointer :: p2
  type,extends(ty3)::ty4
    integer::k3
  end type
  allocate(p)
  allocate(ty4::p2)
  if (.not.extends_type_of(p2,p)) print *,1021
  if (same_type_as(p2,p)) print *,1022
end
end 

use mod
call s11
call s12
call s13
print*,"sngg240o : pass"
end

