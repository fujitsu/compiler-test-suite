module m1
  type ty
    integer :: i=4
  end type
  type(ty) :: x
end
module m333
  interface
    module subroutine sub(a)
use m1,tt=>ty
      integer :: a(x%i)
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
end
end
print *,'pass'
end
