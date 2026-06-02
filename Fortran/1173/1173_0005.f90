module m1
  type ty
    integer :: i=4
  end type
  type tt
    integer :: i=2
  end type
  type(ty) :: x
  type(tt) :: y
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
use m1,r=>y
if (size(a)/=4) print *,201
if (t%i    /=4) print *,202
if (r%i    /=2) print *,203
end
end
use m333,only:sub
      integer :: a(4)
call sub(a)
print *,'sngg317h : pass'
end
