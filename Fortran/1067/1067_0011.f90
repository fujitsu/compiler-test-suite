module mod
interface 
  module subroutine s11
  end
end interface
type :: ty
integer :: k
end type
  class(* ),pointer :: p
end
submodule (mod)mod2
  type,extends(ty)::ty2
    integer::k1
  end type
interface
module subroutine smod(w)
  class(*  ),pointer :: w
end
module subroutine smod2(z)
  class(*  ),pointer :: z
end
end interface
end
submodule (mod:mod2)mod3
contains
module subroutine smod(w)
  class(*  ),pointer :: w
  allocate(ty2::w)
end
module subroutine smod2(z)
  class(*  ),pointer :: z
  allocate(ty2::z)
end
end

submodule (mod:mod3) smod
  type,extends(ty)::ty2
    integer::k1
  end type
  class(*  ),pointer :: q
end 

 
submodule (mod:smod) smod2
  type,extends(ty2)::ty3
    integer::k2
  end type
  class(*  ),pointer :: r
end
 
submodule (mod:smod2) smod3
  type,extends(ty3)::ty4
    integer::k3
  end type
  interface
  module subroutine s11a(q,r,u)
  class(*  ),pointer :: u
  class(*  ),pointer :: r
  class(*  ),pointer :: q
  end
  end interface
end
submodule (mod:smod3) smod4
  class(*  ),pointer :: u
contains
  module subroutine s11
         call       s11a(q,r,u)
  end
  module subroutine s11a(q,r,u)
  class(*  ),pointer :: u
  class(*  ),pointer :: r
  class(*  ),pointer :: q
  allocate(ty2::q)
  allocate(ty3::r)
  allocate(ty4::u)
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
  allocate(ty::p)
call s11
print*,"sngg396o : pass"
end

