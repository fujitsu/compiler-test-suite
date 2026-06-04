module m1
    integer :: x=4
    integer :: y=2
end
module m333
  interface
    module subroutine sub(a)
use m1
      integer :: a(x)
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1
if (size(a)/=4) print *,201
if (x    /=4) print *,202
if (y    /=2) print *,203
end
end
use m333,only:sub
      integer :: a(4)
call sub(a)
print *,'sngg319h : pass'
end
