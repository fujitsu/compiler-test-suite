module mod
interface 
  module subroutine s11
  end
  module subroutine s12
  end
  module subroutine s13
  end
  module subroutine s14
  end
end interface
type :: ty
integer :: k
end type
  class(ty),pointer :: p
  class(ty),pointer :: p2
end

submodule (mod) smod
  type,extends(ty)::ty2
    integer::k1
  end type
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
end 

 
submodule (mod:smod) smod2
  type,extends(ty2)::ty3
    integer::k2
  end type
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
end
 
submodule (mod:smod2) smod3
  type,extends(ty3)::ty4
    integer::k3
  end type
  class(ty4),pointer :: u
  class(ty4),pointer :: u2
contains
  module subroutine s14
  allocate(u)
  allocate(ty4::u2)
  if (.not.extends_type_of(u2,u)) print *,1021
  if (.not.same_type_as(u2,u)) print *,1022
end
end 

use mod
call s14
print*,"sngg245o : pass"
end

