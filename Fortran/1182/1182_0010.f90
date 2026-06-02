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
m=0
select type(p)
  type is(ty2)
   m=1
end select
if (n==1) then
  if (m/=1) print *,1001
else
  if (m/=0) print *,2001
endif
end 
end 
use mod
call s11(1)
call s11(2)
print*,"sngg247o : pass"
end
      subroutine smod(p)
        use mod,only:ty
  type,extends(ty)::ty2
    integer::k2
  end type
        class(ty),pointer::p
      allocate(ty2::p)
      end subroutine
