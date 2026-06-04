module mod
interface 
  module subroutine s11
  end
end interface
type :: ty
integer :: k
end type
  class(ty),pointer :: p
contains
subroutine smod(w)
  type,extends(ty)::ty2
    integer::k1
  end type
  class(ty2),pointer :: w
  allocate(w)
contains
subroutine smod2(z)
  type,extends(ty)::ty2
    integer::k1
  end type
  class(ty2),pointer :: z
  allocate(z)
end
end
end

submodule (mod) smod
  type,extends(ty)::ty2
    integer::k1
  end type
  class(ty2),pointer :: q
end 

 
submodule (mod:smod) smod2
  type,extends(ty2)::ty3
    integer::k2
  end type
  class(ty3),pointer :: r
end
 
submodule (mod:smod2) smod3
  type,extends(ty3)::ty4
    integer::k3
  end type
  class(ty4),pointer :: u
contains
  module subroutine s11
  allocate(q)
  allocate(r)
  allocate(u)
  if (.not.extends_type_of(q,p)) print *,1011
  if (.not.extends_type_of(r,p)) print *,1012
  if (.not.extends_type_of(u,p)) print *,1013
  if (.not.same_type_as(p,p)) print *,2012
  if (same_type_as(q,p)) print *,2013
  if (same_type_as(r,p)) print *,2014
  if (same_type_as(u,p)) print *,2015
end
end
use mod
  allocate(p)
call s11
print*,"sngg253o : pass"
end

