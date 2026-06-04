module mod
interface 
  module subroutine s15
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
contains
subroutine s32(x)
  class(ty2),pointer :: x
allocate(x)
end
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
  class(ty2),pointer :: w,w2
contains
subroutine s24
  call s32(w)
  allocate(w2)
  if (.not.extends_type_of(w2,w)) print *,1001431
  if (.not.same_type_as(w2,w)) print *,1002432
  m=0
  select type(w)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,1113261
  m=0
  select type(w2)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,1213151

end
end 
submodule (mod:smod3) smod4
  type,extends(ty4)::ty5
    integer::k31
  end type
  class(ty2),pointer :: w,w2
contains
module subroutine s15
  call s24
  call s32(w)
  allocate(w2)
  if (.not.extends_type_of(w2,w)) print *,2001431
  if (.not.same_type_as(w2,w)) print *,2002432
  m=0
  select type(w)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,2113261
  m=0
  select type(w2)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,2213151
end
end

use mod
call s15
print*,"sngg262o : pass"
end

