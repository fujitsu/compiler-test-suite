module mod
  type ty
    integer :: i=2
  end type
  type(ty) :: x

  interface
    module subroutine sub(a)
      integer :: a(x%i)
    end subroutine
  end interface
end

submodule (mod) smod
contains
module procedure sub
if (size(a)/=2) print *,101,size(a)
end
end
use mod
      integer :: a(2)
call sub(a)
print *,'pass'
end
