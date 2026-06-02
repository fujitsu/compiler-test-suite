module mod
interface 
  module subroutine s11
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
  type,extends(ty3)::ty4
    integer::k3
  end type
  class(ty4),pointer :: u
contains
  module subroutine s11
  allocate(u)
!  if (.not.extends_type_of(u,p)) print *,1013
! if (same_type_as(u,p)) print *,2015
end
end
use mod
call s11
print*,"sngg252o : pass"
end

