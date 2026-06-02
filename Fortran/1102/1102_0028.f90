module m1
  type ty
    integer :: i!=4
  end type
!  type tt
!    integer :: i!=2
!  end type
  type(ty) :: x
!  type(tt) :: y
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
if (size(a)/=4) print *,1001
end
end
use m333
use m1
      integer :: a(4)
x%i=4
call sub(a)
print *,'sngg199o : pass'
end
