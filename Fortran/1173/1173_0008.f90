module m1
  type ty
    integer :: i=4
  end type
  type(ty) :: x
  type(ty) :: y
end
module m333
  interface
    module subroutine sub(a)
use m1
      integer :: a(x%i)
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1
if (size(a)/=4) print *,201
if (x%i    /=4) print *,202
if (y%i    /=4) print *,203
end
end
use m333,only:sub
      integer :: a(4)
call sub(a)
print *,'sngg320h : pass'
end
