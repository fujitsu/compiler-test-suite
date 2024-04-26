module mod
  type y0
    integer :: i=3
  end type
  type,extends(y0)::y1
    integer :: k
  end type
  type,extends(y1)::y2
    integer :: k11
  end type
  type(y2) :: y

  interface
    module subroutine sub(bb)
      integer :: bb(y%y1%i)
    end subroutine
  end interface
end

submodule (mod) smod
contains
module procedure sub
if (size(bb)/=3) print *,101
end
end

use mod
      integer :: bb(10)
call sub(bb)
print *,'pass'
end
