module mod
interface 
  module subroutine s11(n)
  end
end interface
type :: ty
integer :: k
end type
  class(ty),pointer :: p
end
submodule (mod) smod
  type,extends(ty)::ty2
    integer::k2
  end type
  class(ty2),pointer :: p2
contains
  module subroutine s11(n)
    interface
      subroutine smod(p)
        import::ty
        class(ty),pointer::p
      end subroutine
    end interface
  allocate(p2)
    if (n==1) then
      allocate(ty2::p)
    else
      call smod(p)
    endif
if (n==1) then
  if (.not.extends_type_of(p2,p)) print *,1021
  if (.not.same_type_as(p2,p)) print *,1022
else
  if (extends_type_of(p2,p)) print *,1121
  if (same_type_as(p2,p)) print *,1122
end if
end 
end 
use mod
call s11(1)
call s11(2)
print*,"sngg246o : pass"
end
      subroutine smod(p)
        use mod,only:ty
  type,extends(ty)::ty2
    integer::k2
  end type
        class(ty),pointer::p
      allocate(ty2::p)
      end subroutine
