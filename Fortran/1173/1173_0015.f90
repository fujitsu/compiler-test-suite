module m1
  type ty
    integer :: i!=4
  end type
  type tt
    integer :: i!=2
  end type
  type(ty) :: x
  type(tt) :: y
  integer::n
end
module m333
  interface
    module subroutine sub(a)
use m1
      integer :: a(n)
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1
if (size(a)/=4) print *,201
if (x%i    /=4) print *,202
!if (y%i    /=2) print *,203
end
end
use m333
use m1
      integer :: a(4)
n=4
x%i=4
!y%i=2
call sub(a)
print *,'sngg388h : pass'
end
