module m1
  type ty
    integer :: i!=4
  end type
  type tt
    integer :: i!=2
  end type
  type(ty) :: x
  type(tt) :: y
end
module m333
  interface
    module subroutine sub(a)
use m1
      integer :: a
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1
if (a/=1) print *,201
end
end
use m333
      integer :: a=1
call sub(a)
print *,'sngg324h : pass'
end
