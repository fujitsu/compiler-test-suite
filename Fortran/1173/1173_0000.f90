module m1
  type ty
    integer :: i=4
  end type
  type(ty) :: x
end
module m333
  interface
    module subroutine sub(a)
use m1,t=>x
      integer :: a(t%i)
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
if (size(a)/=4) print *,101,size(a)
end
end
use m333
      integer :: a(4)
call sub(a)
print *,'sngg301h : pass'
end
