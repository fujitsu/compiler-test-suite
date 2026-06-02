module m1
    integer :: x=4
end
module m333
  interface
    module subroutine sub!(a)
use m1,t=>x
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1,t=>x
!if (size(a)/=4) print *,101,size(a)
if (t/=4) print *,9001
end
end
use m333
      integer :: a(4)
call sub!(a)
print *,'sngg202o : pass'
end
