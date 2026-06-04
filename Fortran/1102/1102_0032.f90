module m1
    integer :: x=4
end
module m333
  interface
    module subroutine sub(a)
use m1,t=>x
      integer :: a(t)
    end subroutine
    module subroutine subx(a)
use m1,t=>x
      integer :: a(t)
    end subroutine
  end interface
end

submodule (m333) smod
contains
 module subroutine subx(a)
use m1,t=>x
      integer :: a(t)
if (size(a)/=4) print *,101,size(a)
end
module procedure sub
if (size(a)/=4) print *,101,size(a)
end
end
use m333
      integer :: a(4)
call sub(a)
call subx(a)
print *,'sngg203o : pass'
end
