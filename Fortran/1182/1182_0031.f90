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
  module subroutine s15
  end
end interface
end
submodule (mod) smod0
type :: ty
integer :: k
end type
  class(ty),pointer :: p
  class(ty),pointer :: p2
contains
subroutine s21
  allocate(p)
  allocate(ty::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (.not.same_type_as(p2,p)) print *,101211
  m=0
  select type(p)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,10131
  m=0
  select type(p2)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,10141
end 
end

submodule (mod:smod0) smod
  type,extends(ty)::ty2
    integer::k1
  end type
contains
subroutine s32(z)
  class(ty2),pointer :: z
  allocate(z)
end
  
subroutine s22
  type,extends(ty)::ty21
    integer::k1
  end type
  class(ty21),pointer :: q
  class(ty21),pointer :: q2
  allocate(q)
  allocate(ty21::q2)
  if (.not.extends_type_of(q2,q)) print *,1001
  if (.not.same_type_as(q2,q)) print *,1002
  m=0
  select type(q)
   type is(ty21)
     m=1
  end select
  if (m/=1) print *,1113
  m=0
  select type(q2)
   type is(ty21)
     m=1
  end select
  if (m/=1) print *,1014
  allocate(p)
  allocate(ty::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (.not.same_type_as(p2,p)) print *,1012
  m=0
  select type(p)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,10131
  m=0
  select type(p2)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,10141
end 
end 

 
submodule (mod:smod) smod2
  type,extends(ty2)::ty3
    integer::k2
  end type
contains
subroutine s23
  type,extends(ty2)::ty31
    integer::k22
  end type
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty31),pointer :: r
  class(ty31),pointer :: r2
  class(ty2),pointer :: y,y2
  call s32(y)
  allocate(y2)
  if (.not.extends_type_of(y2,y)) print *,100143
  if (.not.same_type_as(y2,y)) print *,100243
  m=0
  select type(y)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,11132
  m=0
  select type(y2)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,11131

  allocate(r)
  allocate(ty31::r2)
  if (.not.extends_type_of(r2,r)) print *,1001
  if (.not.same_type_as(r2,r)) print *,1002
  m=0
  select type(r)
   type is(ty31)
     m=1
  end select
  if (m/=1) print *,1113
  m=0
  select type(r2)
   type is(ty31)
     m=1
  end select
  if (m/=1) print *,1014
  allocate(q)
  allocate(ty2::q2)
  if (.not.extends_type_of(q2,q)) print *,1001
  if (.not.same_type_as(q2,q)) print *,1002
  m=0
  select type(q)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,1113
  m=0
  select type(q2)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,1014
  allocate(p)
  allocate(ty::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (.not.same_type_as(p2,p)) print *,1012
  m=0
  select type(p)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,10131
  m=0
  select type(p2)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,12131
end
end
 
submodule (mod:smod2) smod3
  type,extends(ty3)::ty4
    integer::k3
  end type
contains
subroutine s24
  type,extends(ty3)::ty41
    integer::k37
  end type
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  class(ty3),pointer :: r
  class(ty3),pointer :: r2
  class(ty41),pointer :: u
  class(ty41),pointer :: u2
  class(ty2),pointer :: w,w2
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

  allocate(u)
  allocate(ty41::u2)
  if (.not.extends_type_of(u2,u)) print *,100112
  if (.not.same_type_as(u2,u)) print *,100271
  m=0
  select type(u)
   type is(ty41)
     m=1
  end select
  if (m/=1) print *,1113
  m=0
  select type(u2)
   type is(ty41)
     m=1
  end select
  if (m/=1) print *,1014
  allocate(r)
  allocate(ty3::r2)
  if (.not.extends_type_of(r2,r)) print *,1001
  if (.not.same_type_as(r2,r)) print *,1002
  m=0
  select type(r)
   type is(ty3)
     m=1
  end select
  if (m/=1) print *,1113
  m=0
  select type(r2)
   type is(ty3)
     m=1
  end select
  if (m/=1) print *,1014
  allocate(q)
  allocate(ty2::q2)
  if (.not.extends_type_of(q2,q)) print *,1001
  if (.not.same_type_as(q2,q)) print *,1002
  m=0
  select type(q)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,1113
  m=0
  select type(q2)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,1014
  allocate(p)
  allocate(ty::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (.not.same_type_as(p2,p)) print *,1012
  m=0
  select type(p)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,10131
  m=0
  select type(p2)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,1213121
end
  module subroutine s11
  allocate(p)
  allocate(ty4::p2)
  if (.not.extends_type_of(p2,p)) print *,1011
  if (same_type_as(p2,p)) print *,101234
  m=0
  select type(p)
   type is(ty)
     m=1
  end select
  if (m/=1) print *,1013
  m=0
  select type(p2)
   type is(ty4)
     m=1
  end select
  if (m/=1) print *,1014
end
  module subroutine s12
  class(ty2),pointer :: q
  class(ty2),pointer :: q2
  allocate(q)
  allocate(ty4::q2)
  if (.not.extends_type_of(q2,q)) print *,1001
  if (same_type_as(q2,q)) print *,1002
  m=0
  select type(q)
   type is(ty2)
     m=1
  end select
  if (m/=1) print *,1113
  m=0
  select type(q2)
   type is(ty4)
     m=1
  end select
  if (m/=1) print *,1014
end
  module subroutine s13
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
  if (m/=1) print *,1213
  m=0
  select type(r2)
   type is(ty4)
     m=1
  end select
  if (m/=1) print *,1214
end
  module subroutine s14
  type,extends(ty3)::ty41
    integer::k37
  end type
  class(ty41),pointer :: u
  class(ty41),pointer :: u2
  allocate(u)
  allocate(ty41::u2)
  if (.not.extends_type_of(u2,u)) print *,1021
  if (.not.same_type_as(u2,u)) print *,1022
  m=0
  select type(u)
   type is(ty41)
     m=1
  end select
  if (m/=1) print *,1313
  m=0
  select type(u2)
   type is(ty41)
     m=1
  end select
  if (m/=1) print *,1314
call s21
call s22
call s23
call s24
end
end 
submodule (mod:smod3) smod4
contains
module subroutine s15
  type,extends(ty4)::ty5
    integer::k31
  end type
  class(ty2),pointer :: w,w2
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
call s11
call s12
call s13
call s14
call s15
print*,"sngg268o : pass"
end

