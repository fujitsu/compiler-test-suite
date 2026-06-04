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
 interface
  module subroutine s11a(p,p2,q,q2,r,r2)
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  end
  module subroutine s12a(p,p2,q,q2,r,r2)
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  end
  module subroutine s13a(p,p2,q,q2,r,r2)
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  end
 end interface
end
 
submodule (mod:smod2) smod3
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
contains
  module subroutine s11
  call              s11a(p,p2,q,q2,r,r2)
  end
  module subroutine s11a(p,p2,q,q2,r,r2)
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  type,extends(ty3)::ty4
    integer::k3
  end type
  allocate(p)
  allocate(ty4::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (same_type_as(p2,p)) print *,1012
end
  module subroutine s12
  call              s12a(p,p2,q,q2,r,r2)
  end
  module subroutine s12a(p,p2,q,q2,r,r2)
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  type,extends(ty3)::ty4
    integer::k3
  end type
  allocate(q)
  allocate(ty4::q2)
  if (.not.extends_type_of(q2,q)) print *,1001
  if (same_type_as(q2,q)) print *,1002
end
  module subroutine s13
  call              s13a(p,p2,q,q2,r,r2)
  end
  module subroutine s13a(p,p2,q,q2,r,r2)
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  type,extends(ty3)::ty4
    integer::k3
  end type
  allocate(r)
  allocate(ty4::r2)
  if (.not.extends_type_of(r2,r)) print *,1021
  if (same_type_as(r2,r)) print *,1022
end
end 

use mod
call s11
call s12
call s13
print*,"sngg392o : pass"
end

