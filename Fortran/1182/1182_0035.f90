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
end 

 
submodule (mod:smod) smod2
  type,extends(ty)::ty2
    integer::k1
  end type
  type,extends(ty2)::ty3
    integer::k2
  end type
end
 
submodule (mod:smod2) smod3
  type,extends(ty3)::ty4
    integer::k3
  end type
contains
  module subroutine s11
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  allocate(p)
  allocate(ty4::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (same_type_as(p2,p)) print *,1012
m=0
select type(p)
 type is(ty)
   m=1
end select
if (m/=1) print *,2002
m=0
select type(p2)
 type is(ty4)
   m=1
end select
if (m/=1) print *,2002
end
  module subroutine s12
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  allocate(q)
  allocate(ty4::q2)
  if (.not.extends_type_of(q2,q)) print *,1001
  if (same_type_as(q2,q)) print *,1002
m=0
select type(q)
 type is(ty2)
   m=1
end select
if (m/=1) print *,2002
m=0
select type(q2)
 type is(ty4)
   m=1
end select
if (m/=1) print *,2002
end
  module subroutine s13
  class(ty),pointer :: p
  class(ty),pointer :: p2
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  allocate(r)
  allocate(ty4::r2)
  if (.not.extends_type_of(r2,r)) print *,1021
  if (same_type_as(r2,r)) print *,1022
m=0
select type(r)
 type is(ty3)
   m=1
end select
if (m/=1) print *,2002
m=0
select type(r2)
 type is(ty4)
   m=1
end select
if (m/=1) print *,2002
end
end 

use mod
call s11
call s12
call s13
print*,"sngg272o : pass"
end

